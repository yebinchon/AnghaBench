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
struct se_session {int /*<<< orphan*/ * fabric_sess_ptr; struct se_portal_group* se_tpg; int /*<<< orphan*/  sess_list; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; int /*<<< orphan*/  session_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct se_session*) ; 

void FUNC5(struct se_session *se_sess)
{
	struct se_portal_group *se_tpg = se_sess->se_tpg;
	unsigned long flags;

	if (!se_tpg) {
		FUNC4(se_sess);
		return;
	}

	FUNC2(&se_tpg->session_lock, flags);
	FUNC0(&se_sess->sess_list);
	se_sess->se_tpg = NULL;
	se_sess->fabric_sess_ptr = NULL;
	FUNC3(&se_tpg->session_lock, flags);

	FUNC1("TARGET_CORE[%s]: Deregistered fabric_sess\n",
		se_tpg->se_tpg_tfo->fabric_name);
	/*
	 * If last kref is dropping now for an explicit NodeACL, awake sleeping
	 * ->acl_free_comp caller to wakeup configfs se_node_acl->acl_group
	 * removal context from within transport_free_session() code.
	 *
	 * For dynamic ACL, target_put_nacl() uses target_complete_nacl()
	 * to release all remaining generate_node_acl=1 created ACL resources.
	 */

	FUNC4(se_sess);
}