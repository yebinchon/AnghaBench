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
struct bfa_s {int dummy; } ;
struct bfa_rport_s {int /*<<< orphan*/  stats; void* rport_drv; struct bfa_s* bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_RPORT_SM_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct bfa_rport_s* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_rport_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct bfa_rport_s *
FUNC6(struct bfa_s *bfa, void *rport_drv)
{
	struct bfa_rport_s *rp;

	rp = FUNC2(FUNC0(bfa));

	if (rp == NULL)
		return NULL;

	rp->bfa = bfa;
	rp->rport_drv = rport_drv;
	FUNC5(&rp->stats, 0, sizeof(rp->stats));

	FUNC1(!FUNC3(rp, bfa_rport_sm_uninit));
	FUNC4(rp, BFA_RPORT_SM_CREATE);

	return rp;
}