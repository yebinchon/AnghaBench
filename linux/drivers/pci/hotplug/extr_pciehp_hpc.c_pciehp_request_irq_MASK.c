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
struct controller {int /*<<< orphan*/  poll_thread; TYPE_1__* pcie; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pciehp_isr ; 
 int /*<<< orphan*/  pciehp_ist ; 
 int /*<<< orphan*/  pciehp_poll ; 
 scalar_t__ pciehp_poll_mode ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*) ; 

__attribute__((used)) static inline int FUNC5(struct controller *ctrl)
{
	int retval, irq = ctrl->pcie->irq;

	if (pciehp_poll_mode) {
		ctrl->poll_thread = FUNC2(&pciehp_poll, ctrl,
						"pciehp_poll-%s",
						FUNC4(ctrl));
		return FUNC0(ctrl->poll_thread);
	}

	/* Installs the interrupt handler */
	retval = FUNC3(irq, pciehp_isr, pciehp_ist,
				      IRQF_SHARED, "pciehp", ctrl);
	if (retval)
		FUNC1(ctrl, "Cannot get irq %d for the hotplug controller\n",
			 irq);
	return retval;
}