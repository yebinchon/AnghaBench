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
typedef  int u32 ;
struct ehci_hcd {int command; TYPE_1__* regs; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; int /*<<< orphan*/  intr_enable; } ;

/* Variables and functions */
 int CMD_IAAD ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  STS_HALT ; 
 int FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct ehci_hcd*) ; 
 int FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*) ; 

__attribute__((used)) static int FUNC9 (struct ehci_hcd *ehci)
{
	u32	temp;

	FUNC5(&ehci->lock);

	/* disable any irqs left enabled by previous code */
	FUNC4(ehci, 0, &ehci->regs->intr_enable);

	if (FUNC1(ehci) && !FUNC8(ehci)) {
		FUNC6(&ehci->lock);
		return 0;
	}

	/*
	 * This routine gets called during probe before ehci->command
	 * has been initialized, so we can't rely on its value.
	 */
	ehci->command &= ~CMD_RUN;
	temp = FUNC2(ehci, &ehci->regs->command);
	temp &= ~(CMD_RUN | CMD_IAAD);
	FUNC4(ehci, temp, &ehci->regs->command);

	FUNC6(&ehci->lock);
	FUNC7(FUNC3(ehci)->irq);

	return FUNC0(ehci, &ehci->regs->status,
			  STS_HALT, STS_HALT, 16 * 125);
}