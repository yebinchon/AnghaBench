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
typedef  unsigned int u32 ;
struct sa1100fb_info {scalar_t__ base; int /*<<< orphan*/  ctrlr_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LCCR0 ; 
 unsigned int LCCR0_LDM ; 
 scalar_t__ LCSR ; 
 unsigned int LCSR_LDD ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sa1100fb_info *fbi = dev_id;
	unsigned int lcsr = FUNC0(fbi->base + LCSR);

	if (lcsr & LCSR_LDD) {
		u32 lccr0 = FUNC0(fbi->base + LCCR0) | LCCR0_LDM;
		FUNC2(lccr0, fbi->base + LCCR0);
		FUNC1(&fbi->ctrlr_wait);
	}

	FUNC2(lcsr, fbi->base + LCSR);
	return IRQ_HANDLED;
}