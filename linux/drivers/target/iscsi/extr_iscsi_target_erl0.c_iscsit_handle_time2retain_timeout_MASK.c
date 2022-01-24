#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timer_list {int dummy; } ;
struct se_portal_group {int /*<<< orphan*/  session_lock; } ;
struct iscsi_session {int time2retain_timer_flags; int /*<<< orphan*/  sid; int /*<<< orphan*/  session_reinstatement; struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {struct se_portal_group tpg_se_tpg; } ;

/* Variables and functions */
 int ISCSI_TF_EXPIRED ; 
 int ISCSI_TF_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct iscsi_session* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct iscsi_session* sess ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time2retain_timer ; 

void FUNC7(struct timer_list *t)
{
	struct iscsi_session *sess = FUNC1(sess, t, time2retain_timer);
	struct iscsi_portal_group *tpg = sess->tpg;
	struct se_portal_group *se_tpg = &tpg->tpg_se_tpg;

	FUNC5(&se_tpg->session_lock);
	if (sess->time2retain_timer_flags & ISCSI_TF_STOP) {
		FUNC6(&se_tpg->session_lock);
		return;
	}
	if (FUNC0(&sess->session_reinstatement)) {
		FUNC4("Exiting Time2Retain handler because"
				" session_reinstatement=1\n");
		FUNC6(&se_tpg->session_lock);
		return;
	}
	sess->time2retain_timer_flags |= ISCSI_TF_EXPIRED;

	FUNC4("Time2Retain timer expired for SID: %u, cleaning up"
			" iSCSI session.\n", sess->sid);

	FUNC3(sess);
	FUNC6(&se_tpg->session_lock);
	FUNC2(sess);
}