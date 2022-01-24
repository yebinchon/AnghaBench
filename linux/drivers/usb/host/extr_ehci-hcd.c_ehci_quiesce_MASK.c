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
typedef  int u32 ;
struct ehci_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_PSE ; 
 scalar_t__ EHCI_RH_RUNNING ; 
 int STS_ASS ; 
 int STS_PSS ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (struct ehci_hcd *ehci)
{
	u32	temp;

	if (ehci->rh_state != EHCI_RH_RUNNING)
		return;

	/* wait for any schedule enables/disables to take effect */
	temp = (ehci->command << 10) & (STS_ASS | STS_PSS);
	FUNC0(ehci, &ehci->regs->status, STS_ASS | STS_PSS, temp,
			16 * 125);

	/* then disable anything that's still active */
	FUNC2(&ehci->lock);
	ehci->command &= ~(CMD_ASE | CMD_PSE);
	FUNC1(ehci, ehci->command, &ehci->regs->command);
	FUNC3(&ehci->lock);

	/* hardware can take 16 microframes to turn off ... */
	FUNC0(ehci, &ehci->regs->status, STS_ASS | STS_PSS, 0,
			16 * 125);
}