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
struct se_portal_group {int /*<<< orphan*/  session_lock; } ;
struct iscsi_session {int time2retain_timer_flags; int /*<<< orphan*/  sid; int /*<<< orphan*/  time2retain_timer; struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {struct se_portal_group tpg_se_tpg; } ;

/* Variables and functions */
 int ISCSI_TF_EXPIRED ; 
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iscsi_session *sess)
{
	struct iscsi_portal_group *tpg = sess->tpg;
	struct se_portal_group *se_tpg = &tpg->tpg_se_tpg;

	FUNC1(&se_tpg->session_lock);

	if (sess->time2retain_timer_flags & ISCSI_TF_EXPIRED)
		return -1;

	if (!(sess->time2retain_timer_flags & ISCSI_TF_RUNNING))
		return 0;

	sess->time2retain_timer_flags |= ISCSI_TF_STOP;
	FUNC4(&se_tpg->session_lock);

	FUNC0(&sess->time2retain_timer);

	FUNC3(&se_tpg->session_lock);
	sess->time2retain_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC2("Stopped Time2Retain Timer for SID: %u\n",
			sess->sid);
	return 0;
}