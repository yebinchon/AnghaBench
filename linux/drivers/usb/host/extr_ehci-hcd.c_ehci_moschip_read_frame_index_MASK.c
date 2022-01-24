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
struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  frame_index; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned FUNC2(struct ehci_hcd *ehci)
{
	unsigned uf;

	uf = FUNC0(ehci, &ehci->regs->frame_index);
	if (FUNC1((uf & 7) == 0))
		uf = FUNC0(ehci, &ehci->regs->frame_index);
	return uf;
}