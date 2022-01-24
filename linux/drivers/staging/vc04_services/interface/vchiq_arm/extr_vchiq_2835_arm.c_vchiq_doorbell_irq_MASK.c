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
struct vchiq_state {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ BELL0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ g_regs ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_state*) ; 

__attribute__((used)) static irqreturn_t
FUNC2(int irq, void *dev_id)
{
	struct vchiq_state *state = dev_id;
	irqreturn_t ret = IRQ_NONE;
	unsigned int status;

	/* Read (and clear) the doorbell */
	status = FUNC0(g_regs + BELL0);

	if (status & 0x4) {  /* Was the doorbell rung? */
		FUNC1(state);
		ret = IRQ_HANDLED;
	}

	return ret;
}