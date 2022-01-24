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
struct ehci_hcd {int /*<<< orphan*/  lock; TYPE_1__* regs; int /*<<< orphan*/  rh_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  configured_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_RH_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ehci_hcd *ehci)
{
	FUNC0(ehci);

	FUNC4(&ehci->lock);
	ehci->rh_state = EHCI_RH_HALTED;
	FUNC2(ehci);

	/* make BIOS/etc use companion controller during reboot */
	FUNC3(ehci, 0, &ehci->regs->configured_flag);

	/* unblock posted writes */
	FUNC1(ehci, &ehci->regs->configured_flag);
	FUNC5(&ehci->lock);
}