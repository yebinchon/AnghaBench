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
typedef  int /*<<< orphan*/  u32 ;
struct ehci_hcd {int iaa_in_progress; TYPE_2__* regs; TYPE_1__* async; scalar_t__ has_synopsys_hc_bug; } ;
struct TYPE_4__ {int /*<<< orphan*/  async_next; } ;
struct TYPE_3__ {scalar_t__ qh_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 

__attribute__((used)) static void FUNC2(struct ehci_hcd *ehci)
{
	if (ehci->has_synopsys_hc_bug)
		FUNC0(ehci, (u32) ehci->async->qh_dma,
			    &ehci->regs->async_next);

	/* The current IAA cycle has ended */
	ehci->iaa_in_progress = false;

	FUNC1(ehci);
}