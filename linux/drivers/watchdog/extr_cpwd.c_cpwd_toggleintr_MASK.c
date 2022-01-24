#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpwd {scalar_t__ regs; TYPE_1__* devs; } ;
struct TYPE_2__ {unsigned char intr_mask; } ;

/* Variables and functions */
 scalar_t__ PLD_IMASK ; 
 unsigned char WD0_INTR_MASK ; 
 unsigned char WD1_INTR_MASK ; 
 unsigned char WD2_INTR_MASK ; 
 int WD_INTR_ON ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cpwd *p, int index, int enable)
{
	unsigned char curregs = FUNC0(p->regs + PLD_IMASK);
	unsigned char setregs =
		(index == -1) ?
		(WD0_INTR_MASK | WD1_INTR_MASK | WD2_INTR_MASK) :
		(p->devs[index].intr_mask);

	if (enable == WD_INTR_ON)
		curregs &= ~setregs;
	else
		curregs |= setregs;

	FUNC1(curregs, p->regs + PLD_IMASK);
}