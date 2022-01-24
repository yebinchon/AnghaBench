#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int /*<<< orphan*/  wqe; int /*<<< orphan*/  reqq; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_5__ {int /*<<< orphan*/  plog; } ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 132 
#define  BFA_LPS_SM_LOGOUT 131 
#define  BFA_LPS_SM_OFFLINE 130 
#define  BFA_LPS_SM_RX_CVL 129 
#define  BFA_LPS_SM_SET_N2N_PID 128 
 int /*<<< orphan*/  BFA_PL_EID_FIP_FCF_CVL ; 
 int /*<<< orphan*/  BFA_PL_EID_LOGO ; 
 int /*<<< orphan*/  BFA_PL_MID_LPS ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  bfa_lps_sm_logout ; 
 int /*<<< orphan*/  bfa_lps_sm_logowait ; 
 int /*<<< orphan*/  bfa_lps_sm_online_n2n_pid_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC9(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
	FUNC8(lps->bfa, lps->bfa_tag);
	FUNC8(lps->bfa, event);

	switch (event) {
	case BFA_LPS_SM_LOGOUT:
		if (FUNC4(lps->bfa, lps->reqq)) {
			FUNC7(lps, bfa_lps_sm_logowait);
			FUNC5(lps->bfa, lps->reqq, &lps->wqe);
		} else {
			FUNC7(lps, bfa_lps_sm_logout);
			FUNC1(lps);
		}
		FUNC3(lps->bfa->plog, BFA_PL_MID_LPS,
			BFA_PL_EID_LOGO, 0, "Logout");
		break;

	case BFA_LPS_SM_RX_CVL:
		FUNC7(lps, bfa_lps_sm_init);

		/* Let the vport module know about this event */
		FUNC0(lps);
		FUNC3(lps->bfa->plog, BFA_PL_MID_LPS,
			BFA_PL_EID_FIP_FCF_CVL, 0, "FCF Clear Virt. Link Rx");
		break;

	case BFA_LPS_SM_SET_N2N_PID:
		if (FUNC4(lps->bfa, lps->reqq)) {
			FUNC7(lps, bfa_lps_sm_online_n2n_pid_wait);
			FUNC5(lps->bfa, lps->reqq, &lps->wqe);
		} else
			FUNC2(lps);
		break;

	case BFA_LPS_SM_OFFLINE:
	case BFA_LPS_SM_DELETE:
		FUNC7(lps, bfa_lps_sm_init);
		break;

	default:
		FUNC6(lps->bfa, event);
	}
}