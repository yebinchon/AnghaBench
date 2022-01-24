#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct otg_fsm {int state_changed; TYPE_1__* otg; int /*<<< orphan*/  a_suspend_req_inf; int /*<<< orphan*/  a_bus_req; int /*<<< orphan*/  a_bus_suspend; } ;
typedef  enum usb_otg_state { ____Placeholder_usb_otg_state } usb_otg_state ;
struct TYPE_4__ {int /*<<< orphan*/  otg_port; } ;
struct TYPE_3__ {int state; TYPE_2__* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_AIDL_BDIS ; 
 int /*<<< orphan*/  A_BIDL_ADIS ; 
 int /*<<< orphan*/  A_WAIT_BCON ; 
 int /*<<< orphan*/  A_WAIT_ENUM ; 
 int /*<<< orphan*/  A_WAIT_VFALL ; 
 int /*<<< orphan*/  A_WAIT_VRISE ; 
 int /*<<< orphan*/  B_ASE0_BRST ; 
 int /*<<< orphan*/  B_SE0_SRP ; 
 int /*<<< orphan*/  B_SRP_FAIL ; 
#define  OTG_STATE_A_HOST 140 
#define  OTG_STATE_A_IDLE 139 
#define  OTG_STATE_A_PERIPHERAL 138 
#define  OTG_STATE_A_SUSPEND 137 
#define  OTG_STATE_A_VBUS_ERR 136 
#define  OTG_STATE_A_WAIT_BCON 135 
#define  OTG_STATE_A_WAIT_VFALL 134 
#define  OTG_STATE_A_WAIT_VRISE 133 
#define  OTG_STATE_B_HOST 132 
#define  OTG_STATE_B_IDLE 131 
#define  OTG_STATE_B_PERIPHERAL 130 
#define  OTG_STATE_B_SRP_INIT 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int /*<<< orphan*/  PROTO_GADGET ; 
 int /*<<< orphan*/  PROTO_HOST ; 
 int /*<<< orphan*/  PROTO_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct otg_fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct otg_fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct otg_fsm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct otg_fsm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct otg_fsm*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct otg_fsm*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct otg_fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct otg_fsm*) ; 
 int /*<<< orphan*/  FUNC9 (struct otg_fsm*) ; 
 int /*<<< orphan*/  FUNC10 (struct otg_fsm*) ; 
 int /*<<< orphan*/  FUNC11 (struct otg_fsm*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct otg_fsm *fsm, enum usb_otg_state new_state)
{
	if (fsm->otg->state == new_state)
		return 0;
	FUNC0("Set state: %s\n", FUNC13(new_state));
	FUNC4(fsm, fsm->otg->state);
	switch (new_state) {
	case OTG_STATE_B_IDLE:
		FUNC3(fsm, 0);
		FUNC2(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		/*
		 * Driver is responsible for starting ADP probing
		 * if ADP sensing times out.
		 */
		FUNC9(fsm);
		FUNC7(fsm, PROTO_UNDEF);
		FUNC1(fsm, B_SE0_SRP);
		break;
	case OTG_STATE_B_SRP_INIT:
		FUNC11(fsm);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_UNDEF);
		FUNC1(fsm, B_SRP_FAIL);
		break;
	case OTG_STATE_B_PERIPHERAL:
		FUNC2(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_GADGET);
		FUNC5(fsm, 1);
		break;
	case OTG_STATE_B_WAIT_ACON:
		FUNC2(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_HOST);
		FUNC1(fsm, B_ASE0_BRST);
		fsm->a_bus_suspend = 0;
		break;
	case OTG_STATE_B_HOST:
		FUNC2(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 1);
		FUNC7(fsm, PROTO_HOST);
		FUNC12(fsm->otg->host,
				fsm->otg->host->otg_port);
		FUNC10(fsm);
		break;
	case OTG_STATE_A_IDLE:
		FUNC3(fsm, 0);
		FUNC2(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC8(fsm);
		FUNC7(fsm, PROTO_HOST);
		break;
	case OTG_STATE_A_WAIT_VRISE:
		FUNC3(fsm, 1);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_HOST);
		FUNC1(fsm, A_WAIT_VRISE);
		break;
	case OTG_STATE_A_WAIT_BCON:
		FUNC3(fsm, 1);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_HOST);
		FUNC1(fsm, A_WAIT_BCON);
		break;
	case OTG_STATE_A_HOST:
		FUNC3(fsm, 1);
		FUNC5(fsm, 0);
		FUNC6(fsm, 1);
		FUNC7(fsm, PROTO_HOST);
		/*
		 * When HNP is triggered while a_bus_req = 0, a_host will
		 * suspend too fast to complete a_set_b_hnp_en
		 */
		if (!fsm->a_bus_req || fsm->a_suspend_req_inf)
			FUNC1(fsm, A_WAIT_ENUM);
		FUNC10(fsm);
		break;
	case OTG_STATE_A_SUSPEND:
		FUNC3(fsm, 1);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_HOST);
		FUNC1(fsm, A_AIDL_BDIS);

		break;
	case OTG_STATE_A_PERIPHERAL:
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_GADGET);
		FUNC3(fsm, 1);
		FUNC5(fsm, 1);
		FUNC1(fsm, A_BIDL_ADIS);
		break;
	case OTG_STATE_A_WAIT_VFALL:
		FUNC3(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_HOST);
		FUNC1(fsm, A_WAIT_VFALL);
		break;
	case OTG_STATE_A_VBUS_ERR:
		FUNC3(fsm, 0);
		FUNC5(fsm, 0);
		FUNC6(fsm, 0);
		FUNC7(fsm, PROTO_UNDEF);
		break;
	default:
		break;
	}

	fsm->otg->state = new_state;
	fsm->state_changed = 1;
	return 0;
}