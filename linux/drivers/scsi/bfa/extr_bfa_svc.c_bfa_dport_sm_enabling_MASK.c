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
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ rsp; } ;
struct bfa_dport_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  test_state; TYPE_2__ i2hmsg; int /*<<< orphan*/  result; } ;
struct bfa_diag_dport_result_s {int dummy; } ;
typedef  enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_DPORT_OPMODE_AUTO ; 
#define  BFA_DPORT_SM_FWRSP 130 
#define  BFA_DPORT_SM_HWFAIL 129 
#define  BFA_DPORT_SM_REQFAIL 128 
 int /*<<< orphan*/  BFA_DPORT_ST_DISABLED ; 
 int /*<<< orphan*/  BFA_DPORT_ST_INP ; 
 int /*<<< orphan*/  BFA_DPORT_ST_NO_SFP ; 
 int /*<<< orphan*/  BFA_STATUS_DPORT_INV_SFP ; 
 int /*<<< orphan*/  BFA_STATUS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_dport_sm_disabled ; 
 int /*<<< orphan*/  bfa_dport_sm_enabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
	FUNC5(dport->bfa, event);

	switch (event) {
	case BFA_DPORT_SM_FWRSP:
		FUNC6(&dport->result, 0,
				sizeof(struct bfa_diag_dport_result_s));
		if (dport->i2hmsg.rsp.status == BFA_STATUS_DPORT_INV_SFP) {
			dport->test_state = BFA_DPORT_ST_NO_SFP;
		} else {
			dport->test_state = BFA_DPORT_ST_INP;
			FUNC1(dport, BFA_DPORT_OPMODE_AUTO);
		}
		FUNC4(dport, bfa_dport_sm_enabled);
		break;

	case BFA_DPORT_SM_REQFAIL:
		dport->test_state = BFA_DPORT_ST_DISABLED;
		FUNC2(dport->bfa);
		FUNC4(dport, bfa_dport_sm_disabled);
		break;

	case BFA_DPORT_SM_HWFAIL:
		FUNC4(dport, bfa_dport_sm_disabled);
		FUNC0(dport, BFA_STATUS_FAILED);
		break;

	default:
		FUNC3(dport->bfa, event);
	}
}