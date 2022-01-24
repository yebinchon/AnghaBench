#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rq_entry {int recover_seq; int nodeid; int /*<<< orphan*/  list; int /*<<< orphan*/  request; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_length; } ;
struct dlm_message {TYPE_1__ m_header; } ;
struct dlm_ls {int ls_recover_seq; int /*<<< orphan*/  ls_requestqueue_mutex; int /*<<< orphan*/  ls_requestqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct rq_entry* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dlm_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dlm_ls *ls, int nodeid, struct dlm_message *ms)
{
	struct rq_entry *e;
	int length = ms->m_header.h_length - sizeof(struct dlm_message);

	e = FUNC0(sizeof(struct rq_entry) + length, GFP_NOFS);
	if (!e) {
		FUNC2("dlm_add_requestqueue: out of memory len %d", length);
		return;
	}

	e->recover_seq = ls->ls_recover_seq & 0xFFFFFFFF;
	e->nodeid = nodeid;
	FUNC3(&e->request, ms, ms->m_header.h_length);

	FUNC4(&ls->ls_requestqueue_mutex);
	FUNC1(&e->list, &ls->ls_requestqueue);
	FUNC5(&ls->ls_requestqueue_mutex);
}