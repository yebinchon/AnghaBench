#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int /*<<< orphan*/  wqe; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; } ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 132 
#define  BFA_LPS_SM_LOGOUT 131 
#define  BFA_LPS_SM_OFFLINE 130 
#define  BFA_LPS_SM_RESUME 129 
#define  BFA_LPS_SM_RX_CVL 128 
 int /*<<< orphan*/  BFA_PL_EID_FIP_FCF_CVL ; 
 int /*<<< orphan*/  BFA_PL_EID_LOGO ; 
 int /*<<< orphan*/  BFA_PL_MID_LPS ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  bfa_lps_sm_logowait ; 
 int /*<<< orphan*/  bfa_lps_sm_online ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
	FUNC6(lps->bfa, lps->bfa_tag);
	FUNC6(lps->bfa, event);

	switch (event) {
	case BFA_LPS_SM_RESUME:
		FUNC5(lps, bfa_lps_sm_online);
		FUNC1(lps);
		break;

	case BFA_LPS_SM_LOGOUT:
		FUNC5(lps, bfa_lps_sm_logowait);
		FUNC2(lps->bfa->plog, BFA_PL_MID_LPS,
			BFA_PL_EID_LOGO, 0, "Logout");
		break;

	case BFA_LPS_SM_RX_CVL:
		FUNC5(lps, bfa_lps_sm_init);
		FUNC3(&lps->wqe);

		/* Let the vport module know about this event */
		FUNC0(lps);
		FUNC2(lps->bfa->plog, BFA_PL_MID_LPS,
			BFA_PL_EID_FIP_FCF_CVL, 0, "FCF Clear Virt. Link Rx");
		break;

	case BFA_LPS_SM_OFFLINE:
	case BFA_LPS_SM_DELETE:
		FUNC5(lps, bfa_lps_sm_init);
		FUNC3(&lps->wqe);
		break;

	default:
		FUNC4(lps->bfa, event);
	}
}