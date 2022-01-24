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
struct TYPE_3__ {int /*<<< orphan*/  intr_mask; } ;
struct TYPE_4__ {TYPE_1__ bfa_regs; } ;
struct bfa_s {TYPE_2__ iocfc; int /*<<< orphan*/  intr_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_s *bfa)
{
	bfa->intr_enabled = BFA_FALSE;
	FUNC0(bfa, BFA_FALSE);
	FUNC2(-1L, bfa->iocfc.bfa_regs.intr_mask);
	FUNC1(bfa);
}