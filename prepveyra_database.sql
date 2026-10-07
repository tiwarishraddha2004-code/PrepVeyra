--
-- PostgreSQL database dump
--

\restrict dcDStSaZhawAZYhqjoeTG1jNYPIz7kUQs8KTTQ4P6oA3uPNDLU7g76kLFmx4o1y

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-07 20:13:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 16556)
-- Name: aptitude_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aptitude_results (
    id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.aptitude_results OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16555)
-- Name: aptitude_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aptitude_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aptitude_results_id_seq OWNER TO postgres;

--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 227
-- Name: aptitude_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aptitude_results_id_seq OWNED BY public.aptitude_results.id;


--
-- TOC entry 226 (class 1259 OID 16540)
-- Name: coding_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coding_results (
    id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.coding_results OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16539)
-- Name: coding_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coding_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.coding_results_id_seq OWNER TO postgres;

--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 225
-- Name: coding_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coding_results_id_seq OWNED BY public.coding_results.id;


--
-- TOC entry 224 (class 1259 OID 16523)
-- Name: interview_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interview_results (
    id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.interview_results OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16522)
-- Name: interview_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interview_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.interview_results_id_seq OWNER TO postgres;

--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 223
-- Name: interview_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interview_results_id_seq OWNED BY public.interview_results.id;


--
-- TOC entry 232 (class 1259 OID 16590)
-- Name: overall_progress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.overall_progress (
    id integer NOT NULL,
    user_id integer NOT NULL,
    overall_score integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.overall_progress OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16589)
-- Name: overall_progress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.overall_progress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.overall_progress_id_seq OWNER TO postgres;

--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 231
-- Name: overall_progress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.overall_progress_id_seq OWNED BY public.overall_progress.id;


--
-- TOC entry 222 (class 1259 OID 16506)
-- Name: resume_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_results (
    id integer NOT NULL,
    user_id integer NOT NULL,
    ats_score integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.resume_results OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16505)
-- Name: resume_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resume_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.resume_results_id_seq OWNER TO postgres;

--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 221
-- Name: resume_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resume_results_id_seq OWNED BY public.resume_results.id;


--
-- TOC entry 230 (class 1259 OID 16572)
-- Name: roadmap_progress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roadmap_progress (
    id integer NOT NULL,
    user_id integer NOT NULL,
    completed_tasks integer DEFAULT 0,
    total_tasks integer DEFAULT 0,
    progress integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.roadmap_progress OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16571)
-- Name: roadmap_progress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roadmap_progress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roadmap_progress_id_seq OWNER TO postgres;

--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 229
-- Name: roadmap_progress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roadmap_progress_id_seq OWNED BY public.roadmap_progress.id;


--
-- TOC entry 220 (class 1259 OID 16481)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    mobile character varying(10) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16480)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4894 (class 2604 OID 16559)
-- Name: aptitude_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aptitude_results ALTER COLUMN id SET DEFAULT nextval('public.aptitude_results_id_seq'::regclass);


--
-- TOC entry 4892 (class 2604 OID 16543)
-- Name: coding_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coding_results ALTER COLUMN id SET DEFAULT nextval('public.coding_results_id_seq'::regclass);


--
-- TOC entry 4890 (class 2604 OID 16526)
-- Name: interview_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interview_results ALTER COLUMN id SET DEFAULT nextval('public.interview_results_id_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 16593)
-- Name: overall_progress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.overall_progress ALTER COLUMN id SET DEFAULT nextval('public.overall_progress_id_seq'::regclass);


--
-- TOC entry 4888 (class 2604 OID 16509)
-- Name: resume_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_results ALTER COLUMN id SET DEFAULT nextval('public.resume_results_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 16575)
-- Name: roadmap_progress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roadmap_progress ALTER COLUMN id SET DEFAULT nextval('public.roadmap_progress_id_seq'::regclass);


--
-- TOC entry 4886 (class 2604 OID 16484)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5081 (class 0 OID 16556)
-- Dependencies: 228
-- Data for Name: aptitude_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aptitude_results (id, user_id, score, created_at) FROM stdin;
1	1	80	2026-10-07 13:03:56.20787
2	2	100	2026-10-07 15:28:29.694246
\.


--
-- TOC entry 5079 (class 0 OID 16540)
-- Dependencies: 226
-- Data for Name: coding_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coding_results (id, user_id, score, created_at) FROM stdin;
1	1	80	2026-10-06 20:39:41.686177
2	1	100	2026-10-06 20:43:08.744605
3	2	100	2026-10-07 15:24:33.072705
4	2	100	2026-10-07 15:25:57.349594
\.


--
-- TOC entry 5077 (class 0 OID 16523)
-- Dependencies: 224
-- Data for Name: interview_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interview_results (id, user_id, score, created_at) FROM stdin;
1	1	30	2026-10-06 13:16:15.264385
2	1	90	2026-10-06 13:20:19.707068
3	2	90	2026-10-07 15:19:01.500303
4	2	90	2026-10-07 15:19:50.757704
5	2	90	2026-10-07 15:20:55.779424
\.


--
-- TOC entry 5085 (class 0 OID 16590)
-- Dependencies: 232
-- Data for Name: overall_progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.overall_progress (id, user_id, overall_score, created_at) FROM stdin;
1	1	86	2026-10-07 19:54:41.173386
2	1	86	2026-10-07 19:54:41.185626
3	1	86	2026-10-07 19:54:45.036168
4	1	86	2026-10-07 19:54:45.051165
5	1	86	2026-10-07 19:54:48.675754
6	1	86	2026-10-07 19:54:50.0541
7	1	86	2026-10-07 19:55:17.37512
8	1	86	2026-10-07 19:55:17.39198
\.


--
-- TOC entry 5075 (class 0 OID 16506)
-- Dependencies: 222
-- Data for Name: resume_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resume_results (id, user_id, ats_score, created_at) FROM stdin;
1	1	62	2026-10-04 22:57:26.627585
2	1	62	2026-10-06 10:29:44.642429
3	2	58	2026-10-07 15:22:07.567226
\.


--
-- TOC entry 5083 (class 0 OID 16572)
-- Dependencies: 230
-- Data for Name: roadmap_progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roadmap_progress (id, user_id, completed_tasks, total_tasks, progress, created_at) FROM stdin;
1	1	1	8	13	2026-10-07 15:06:13.958692
2	1	0	8	0	2026-10-07 15:06:16.392287
3	1	1	8	13	2026-10-07 15:06:21.461498
4	1	2	8	25	2026-10-07 15:06:24.416395
5	1	3	8	38	2026-10-07 15:06:41.066182
6	1	4	8	50	2026-10-07 15:06:44.549907
7	1	5	8	63	2026-10-07 15:06:47.553891
8	1	6	8	75	2026-10-07 15:06:50.26316
9	1	7	8	88	2026-10-07 15:06:52.347976
10	1	8	8	100	2026-10-07 15:06:55.00266
\.


--
-- TOC entry 5073 (class 0 OID 16481)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, mobile, password, created_at) FROM stdin;
1	Sunita Tiwari	sunita12@gmail.com	7894561235	$2b$10$ugLBqsXLa0y1iwGa8d3wsukSUQ38DqvRLSh.Zs2rkXXnHkQbPRv4S	2026-10-04 11:28:15.719383
2	Shraddha Tiwari	shraddha2004@gmail.com	8452518712	$2b$10$2.nIe1rNFvRGRRBaO9qgYeLkyzMgUUxGD6yFlaj.mlNQpF7FN/gmC	2026-10-07 15:16:22.560356
\.


--
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 227
-- Name: aptitude_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aptitude_results_id_seq', 2, true);


--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 225
-- Name: coding_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coding_results_id_seq', 4, true);


--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 223
-- Name: interview_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interview_results_id_seq', 5, true);


--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 231
-- Name: overall_progress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.overall_progress_id_seq', 8, true);


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 221
-- Name: resume_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resume_results_id_seq', 3, true);


--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 229
-- Name: roadmap_progress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roadmap_progress_id_seq', 10, true);


--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- TOC entry 4914 (class 2606 OID 16565)
-- Name: aptitude_results aptitude_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aptitude_results
    ADD CONSTRAINT aptitude_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4912 (class 2606 OID 16549)
-- Name: coding_results coding_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coding_results
    ADD CONSTRAINT coding_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4910 (class 2606 OID 16532)
-- Name: interview_results interview_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interview_results
    ADD CONSTRAINT interview_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4918 (class 2606 OID 16599)
-- Name: overall_progress overall_progress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.overall_progress
    ADD CONSTRAINT overall_progress_pkey PRIMARY KEY (id);


--
-- TOC entry 4908 (class 2606 OID 16515)
-- Name: resume_results resume_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_results
    ADD CONSTRAINT resume_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4916 (class 2606 OID 16583)
-- Name: roadmap_progress roadmap_progress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roadmap_progress
    ADD CONSTRAINT roadmap_progress_pkey PRIMARY KEY (id);


--
-- TOC entry 4904 (class 2606 OID 16496)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4906 (class 2606 OID 16494)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4922 (class 2606 OID 16566)
-- Name: aptitude_results aptitude_results_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aptitude_results
    ADD CONSTRAINT aptitude_results_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4921 (class 2606 OID 16550)
-- Name: coding_results coding_results_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coding_results
    ADD CONSTRAINT coding_results_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4920 (class 2606 OID 16533)
-- Name: interview_results interview_results_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interview_results
    ADD CONSTRAINT interview_results_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4924 (class 2606 OID 16600)
-- Name: overall_progress overall_progress_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.overall_progress
    ADD CONSTRAINT overall_progress_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4919 (class 2606 OID 16516)
-- Name: resume_results resume_results_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_results
    ADD CONSTRAINT resume_results_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4923 (class 2606 OID 16584)
-- Name: roadmap_progress roadmap_progress_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roadmap_progress
    ADD CONSTRAINT roadmap_progress_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2026-10-07 20:13:29

--
-- PostgreSQL database dump complete
--

\unrestrict dcDStSaZhawAZYhqjoeTG1jNYPIz7kUQs8KTTQ4P6oA3uPNDLU7g76kLFmx4o1y

