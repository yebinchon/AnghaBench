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
struct bfa_rport_s {int rport_tag; int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;

/* Variables and functions */
#define  BFA_RPORT_SM_CREATE 128 
 int /*<<< orphan*/  bfa_rport_sm_created ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_un_cr ; 
 int /*<<< orphan*/  sm_un_unexp ; 

__attribute__((used)) static void
FUNC4(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
	FUNC3(rp->bfa, rp->rport_tag);
	FUNC3(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_CREATE:
		FUNC2(rp, sm_un_cr);
		FUNC1(rp, bfa_rport_sm_created);
		break;

	default:
		FUNC2(rp, sm_un_unexp);
		FUNC0(rp->bfa, event);
	}
}