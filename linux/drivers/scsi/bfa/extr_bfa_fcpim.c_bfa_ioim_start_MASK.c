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
struct bfa_ioim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq; int /*<<< orphan*/  fcpim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_IOIM_SM_START ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_ioim_s *ioim)
{
	FUNC1(ioim->fcpim, ioim);

	/*
	 * Obtain the queue over which this request has to be issued
	 */
	ioim->reqq = FUNC0(ioim->bfa) ?
			BFA_FALSE : FUNC2(ioim);

	FUNC3(ioim, BFA_IOIM_SM_START);
}