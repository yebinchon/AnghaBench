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
struct se_session {struct iscsi_session* fabric_sess_ptr; } ;
struct se_portal_group {int /*<<< orphan*/  session_lock; } ;
struct iscsi_session {int time2retain_timer_flags; int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  session_fall_back_to_erl0; int /*<<< orphan*/  session_reinstatement; int /*<<< orphan*/  session_logout; TYPE_1__* tpg; } ;
struct TYPE_2__ {struct se_portal_group tpg_se_tpg; } ;

/* Variables and functions */
 int ISCSI_TF_EXPIRED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_session*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct se_session *se_sess)
{
	struct iscsi_session *sess = se_sess->fabric_sess_ptr;
	struct se_portal_group *se_tpg = &sess->tpg->tpg_se_tpg;

	FUNC6(&se_tpg->session_lock);
	FUNC5(&sess->conn_lock);
	if (FUNC0(&sess->session_fall_back_to_erl0) ||
	    FUNC0(&sess->session_logout) ||
	    (sess->time2retain_timer_flags & ISCSI_TF_EXPIRED)) {
		FUNC7(&sess->conn_lock);
		FUNC8(&se_tpg->session_lock);
		return;
	}
	FUNC1(&sess->session_reinstatement, 1);
	FUNC1(&sess->session_fall_back_to_erl0, 1);
	FUNC7(&sess->conn_lock);

	FUNC4(sess);
	FUNC8(&se_tpg->session_lock);

	FUNC3(sess, 1, 1);
	FUNC2(sess);
}