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
struct ehci_hcd {TYPE_1__* regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  hcs_params; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port_status; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_RWC_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ehci_hcd *ehci)
{
	int	port = FUNC0(ehci->hcs_params);

	while (port--) {
		FUNC4(&ehci->lock);
		FUNC1(ehci, port, false);
		FUNC3(&ehci->lock);
		FUNC2(ehci, PORT_RWC_BITS,
				&ehci->regs->port_status[port]);
	}
}