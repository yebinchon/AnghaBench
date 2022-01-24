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
struct bfa_ioim_s {int /*<<< orphan*/  sgpg_q; int /*<<< orphan*/  sgpg; TYPE_2__* iosp; int /*<<< orphan*/  nsges; int /*<<< orphan*/  nsgpgs; } ;
struct TYPE_3__ {int /*<<< orphan*/  sgpg_q; } ;
struct TYPE_4__ {TYPE_1__ sgpg_wqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOIM_SM_SGALLOCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *cbarg)
{
	struct bfa_ioim_s *ioim = cbarg;

	ioim->nsgpgs = FUNC0(ioim->nsges);
	FUNC3(&ioim->iosp->sgpg_wqe.sgpg_q, &ioim->sgpg_q);
	ioim->sgpg = FUNC1(&ioim->sgpg_q);
	FUNC2(ioim, BFA_IOIM_SM_SGALLOCED);
}