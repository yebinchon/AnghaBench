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
typedef  int uint32_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_message {char* m_extra; int m_hash; } ;
struct dlm_ls {int ls_rsbtbl_size; int ls_remove_len; char* ls_remove_name; int /*<<< orphan*/  ls_remove_spin; TYPE_1__* ls_rsbtbl; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  toss; int /*<<< orphan*/  keep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MSG_REMOVE ; 
 int DLM_RESNAME_MAXLEN ; 
 int FUNC0 (struct dlm_ls*,int,int,int /*<<< orphan*/ ,struct dlm_message**,struct dlm_mhandle**) ; 
 int FUNC1 (struct dlm_ls*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,struct dlm_rsb**) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_mhandle*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct dlm_ls *ls, char *ms_name, int len)
{
	char name[DLM_RESNAME_MAXLEN + 1];
	struct dlm_message *ms;
	struct dlm_mhandle *mh;
	struct dlm_rsb *r;
	uint32_t hash, b;
	int rv, dir_nodeid;

	FUNC6(name, 0, sizeof(name));
	FUNC5(name, ms_name, len);

	hash = FUNC3(name, len, 0);
	b = hash & (ls->ls_rsbtbl_size - 1);

	dir_nodeid = FUNC1(ls, hash);

	FUNC4(ls, "send_repeat_remove dir %d %s", dir_nodeid, name);

	FUNC8(&ls->ls_rsbtbl[b].lock);
	rv = FUNC2(&ls->ls_rsbtbl[b].keep, name, len, &r);
	if (!rv) {
		FUNC9(&ls->ls_rsbtbl[b].lock);
		FUNC4(ls, "repeat_remove on keep %s", name);
		return;
	}

	rv = FUNC2(&ls->ls_rsbtbl[b].toss, name, len, &r);
	if (!rv) {
		FUNC9(&ls->ls_rsbtbl[b].lock);
		FUNC4(ls, "repeat_remove on toss %s", name);
		return;
	}

	/* use ls->remove_name2 to avoid conflict with shrink? */

	FUNC8(&ls->ls_remove_spin);
	ls->ls_remove_len = len;
	FUNC5(ls->ls_remove_name, name, DLM_RESNAME_MAXLEN);
	FUNC9(&ls->ls_remove_spin);
	FUNC9(&ls->ls_rsbtbl[b].lock);

	rv = FUNC0(ls, sizeof(struct dlm_message) + len,
			     dir_nodeid, DLM_MSG_REMOVE, &ms, &mh);
	if (rv)
		return;

	FUNC5(ms->m_extra, name, len);
	ms->m_hash = hash;

	FUNC7(mh, ms);

	FUNC8(&ls->ls_remove_spin);
	ls->ls_remove_len = 0;
	FUNC6(ls->ls_remove_name, 0, DLM_RESNAME_MAXLEN);
	FUNC9(&ls->ls_remove_spin);
}