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
struct seq_file {struct ci_hdrc* private; } ;
struct otg_fsm {int /*<<< orphan*/  protocol; int /*<<< orphan*/  id; int /*<<< orphan*/  adp_prb; int /*<<< orphan*/  loc_sof; int /*<<< orphan*/  loc_conn; int /*<<< orphan*/  drv_vbus; int /*<<< orphan*/  b_srp_done; int /*<<< orphan*/  b_sess_vld; int /*<<< orphan*/  b_ssend_srp; int /*<<< orphan*/  b_se0_srp; int /*<<< orphan*/  b_bus_suspend; int /*<<< orphan*/  b_bus_req; int /*<<< orphan*/  a_conn; int /*<<< orphan*/  a_bus_suspend; int /*<<< orphan*/  a_bus_resume; int /*<<< orphan*/  power_up; int /*<<< orphan*/  adp_change; int /*<<< orphan*/  b_conn; int /*<<< orphan*/  a_vbus_vld; int /*<<< orphan*/  a_srp_det; int /*<<< orphan*/  a_bus_req; int /*<<< orphan*/  a_bus_drop; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ci_hdrc {TYPE_1__ otg; struct otg_fsm fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *unused)
{
	struct ci_hdrc *ci = s->private;
	struct otg_fsm *fsm;

	if (!ci || !FUNC0(ci))
		return 0;

	fsm = &ci->fsm;

	/* ------ State ----- */
	FUNC1(s, "OTG state: %s\n\n",
			FUNC2(ci->otg.state));

	/* ------ State Machine Variables ----- */
	FUNC1(s, "a_bus_drop: %d\n", fsm->a_bus_drop);

	FUNC1(s, "a_bus_req: %d\n", fsm->a_bus_req);

	FUNC1(s, "a_srp_det: %d\n", fsm->a_srp_det);

	FUNC1(s, "a_vbus_vld: %d\n", fsm->a_vbus_vld);

	FUNC1(s, "b_conn: %d\n", fsm->b_conn);

	FUNC1(s, "adp_change: %d\n", fsm->adp_change);

	FUNC1(s, "power_up: %d\n", fsm->power_up);

	FUNC1(s, "a_bus_resume: %d\n", fsm->a_bus_resume);

	FUNC1(s, "a_bus_suspend: %d\n", fsm->a_bus_suspend);

	FUNC1(s, "a_conn: %d\n", fsm->a_conn);

	FUNC1(s, "b_bus_req: %d\n", fsm->b_bus_req);

	FUNC1(s, "b_bus_suspend: %d\n", fsm->b_bus_suspend);

	FUNC1(s, "b_se0_srp: %d\n", fsm->b_se0_srp);

	FUNC1(s, "b_ssend_srp: %d\n", fsm->b_ssend_srp);

	FUNC1(s, "b_sess_vld: %d\n", fsm->b_sess_vld);

	FUNC1(s, "b_srp_done: %d\n", fsm->b_srp_done);

	FUNC1(s, "drv_vbus: %d\n", fsm->drv_vbus);

	FUNC1(s, "loc_conn: %d\n", fsm->loc_conn);

	FUNC1(s, "loc_sof: %d\n", fsm->loc_sof);

	FUNC1(s, "adp_prb: %d\n", fsm->adp_prb);

	FUNC1(s, "id: %d\n", fsm->id);

	FUNC1(s, "protocol: %d\n", fsm->protocol);

	return 0;
}