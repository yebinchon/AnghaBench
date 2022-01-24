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
struct bfa_fcport_s {int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;

/* Variables and functions */
#define  BFA_FCPORT_SM_START 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling_qwait ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bfa_fcport_s *fcport,
			 enum bfa_fcport_sm_event event)
{
	FUNC2(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_START:
		if (FUNC0(fcport))
			FUNC1(fcport, bfa_fcport_sm_enabling);
		else
			FUNC1(fcport,
					 bfa_fcport_sm_enabling_qwait);
		break;

	default:
		/*
		 * Ignore all other events.
		 */
		;
	}
}