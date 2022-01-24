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
struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int /*<<< orphan*/  fdisc; int /*<<< orphan*/  wqe; int /*<<< orphan*/  reqq; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_5__ {int /*<<< orphan*/  plog; } ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 134 
#define  BFA_LPS_SM_FWRSP 133 
#define  BFA_LPS_SM_LOGIN 132 
#define  BFA_LPS_SM_LOGOUT 131 
#define  BFA_LPS_SM_OFFLINE 130 
#define  BFA_LPS_SM_RX_CVL 129 
#define  BFA_LPS_SM_SET_N2N_PID 128 
 int /*<<< orphan*/  BFA_PL_EID_LOGIN ; 
 int /*<<< orphan*/  BFA_PL_MID_LPS ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_login ; 
 int /*<<< orphan*/  bfa_lps_sm_loginwait ; 
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
	case BFA_LPS_SM_LOGIN:
		if (FUNC4(lps->bfa, lps->reqq)) {
			FUNC7(lps, bfa_lps_sm_loginwait);
			FUNC5(lps->bfa, lps->reqq, &lps->wqe);
		} else {
			FUNC7(lps, bfa_lps_sm_login);
			FUNC2(lps);
		}

		if (lps->fdisc)
			FUNC3(lps->bfa->plog, BFA_PL_MID_LPS,
				BFA_PL_EID_LOGIN, 0, "FDISC Request");
		else
			FUNC3(lps->bfa->plog, BFA_PL_MID_LPS,
				BFA_PL_EID_LOGIN, 0, "FLOGI Request");
		break;

	case BFA_LPS_SM_LOGOUT:
		FUNC1(lps);
		break;

	case BFA_LPS_SM_DELETE:
		FUNC0(lps);
		break;

	case BFA_LPS_SM_RX_CVL:
	case BFA_LPS_SM_OFFLINE:
		break;

	case BFA_LPS_SM_FWRSP:
		/*
		 * Could happen when fabric detects loopback and discards
		 * the lps request. Fw will eventually sent out the timeout
		 * Just ignore
		 */
		break;
	case BFA_LPS_SM_SET_N2N_PID:
		/*
		 * When topology is set to loop, bfa_lps_set_n2n_pid() sends
		 * this event. Ignore this event.
		 */
		break;

	default:
		FUNC6(lps->bfa, event);
	}
}