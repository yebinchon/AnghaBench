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
struct bfa_dport_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;

/* Variables and functions */
#define  BFA_DPORT_SM_HWFAIL 130 
#define  BFA_DPORT_SM_QRESUME 129 
#define  BFA_DPORT_SM_SCN 128 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_DPORT_DYN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_dport_sm_disabled ; 
 int /*<<< orphan*/  bfa_dport_sm_dynamic_disabling ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_dport_s *dport,
			    enum bfa_dport_sm_event event)
{
	FUNC5(dport->bfa, event);

	switch (event) {
	case BFA_DPORT_SM_QRESUME:
		FUNC4(dport, bfa_dport_sm_dynamic_disabling);
		FUNC1(dport, BFI_DPORT_DYN_DISABLE);
		break;

	case BFA_DPORT_SM_HWFAIL:
		FUNC4(dport, bfa_dport_sm_disabled);
		FUNC2(&dport->reqq_wait);
		FUNC0(dport, BFA_STATUS_OK);
		break;

	case BFA_DPORT_SM_SCN:
		/* ignore */
		break;

	default:
		FUNC3(dport->bfa, event);
	}
}