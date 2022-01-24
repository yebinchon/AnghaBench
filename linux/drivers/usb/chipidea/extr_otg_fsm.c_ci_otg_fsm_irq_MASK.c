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
typedef  int u32 ;
struct otg_fsm {int id; int a_srp_det; int a_bus_req; int b_sess_vld; int a_vbus_vld; scalar_t__ b_conn; scalar_t__ b_ssend_srp; scalar_t__ a_bus_drop; } ;
struct ci_hdrc {int id_event; struct otg_fsm fsm; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_SRP_FAIL ; 
 int /*<<< orphan*/  B_SSEND_SRP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int OTGSC_AVV ; 
 int OTGSC_AVVIS ; 
 int OTGSC_BSV ; 
 int OTGSC_BSVIS ; 
 int OTGSC_DPIS ; 
 int OTGSC_ID ; 
 int OTGSC_IDIS ; 
 int OTGSC_INT_STATUS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*) ; 
 int FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ci_hdrc*,int,int) ; 

irqreturn_t FUNC6(struct ci_hdrc *ci)
{
	irqreturn_t retval =  IRQ_NONE;
	u32 otgsc, otg_int_src = 0;
	struct otg_fsm *fsm = &ci->fsm;

	otgsc = FUNC4(ci, ~0);
	otg_int_src = otgsc & OTGSC_INT_STATUS_BITS & (otgsc >> 8);
	fsm->id = (otgsc & OTGSC_ID) ? 1 : 0;

	if (otg_int_src) {
		if (otg_int_src & OTGSC_DPIS) {
			FUNC5(ci, OTGSC_DPIS, OTGSC_DPIS);
			fsm->a_srp_det = 1;
			fsm->a_bus_drop = 0;
		} else if (otg_int_src & OTGSC_IDIS) {
			FUNC5(ci, OTGSC_IDIS, OTGSC_IDIS);
			if (fsm->id == 0) {
				fsm->a_bus_drop = 0;
				fsm->a_bus_req = 1;
				ci->id_event = true;
			}
		} else if (otg_int_src & OTGSC_BSVIS) {
			FUNC5(ci, OTGSC_BSVIS, OTGSC_BSVIS);
			if (otgsc & OTGSC_BSV) {
				fsm->b_sess_vld = 1;
				FUNC1(ci, B_SSEND_SRP);
				FUNC1(ci, B_SRP_FAIL);
				fsm->b_ssend_srp = 0;
			} else {
				fsm->b_sess_vld = 0;
				if (fsm->id)
					FUNC0(ci, B_SSEND_SRP);
			}
		} else if (otg_int_src & OTGSC_AVVIS) {
			FUNC5(ci, OTGSC_AVVIS, OTGSC_AVVIS);
			if (otgsc & OTGSC_AVV) {
				fsm->a_vbus_vld = 1;
			} else {
				fsm->a_vbus_vld = 0;
				fsm->b_conn = 0;
			}
		}
		FUNC3(ci);
		return IRQ_HANDLED;
	}

	FUNC2(ci);

	return retval;
}