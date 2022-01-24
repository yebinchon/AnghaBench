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
struct ehci_hcd {int periodic_size; int /*<<< orphan*/ * pshadow; int /*<<< orphan*/ * periodic; int /*<<< orphan*/  periodic_dma; int /*<<< orphan*/ * sitd_pool; int /*<<< orphan*/ * itd_pool; int /*<<< orphan*/ * qh_pool; int /*<<< orphan*/ * qtd_pool; int /*<<< orphan*/ * dummy; int /*<<< orphan*/ * async; } ;
struct TYPE_3__ {int /*<<< orphan*/  sysdev; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct ehci_hcd *ehci)
{
	if (ehci->async)
		FUNC4(ehci, ehci->async);
	ehci->async = NULL;

	if (ehci->dummy)
		FUNC4(ehci, ehci->dummy);
	ehci->dummy = NULL;

	/* DMA consistent memory and pools */
	FUNC1(ehci->qtd_pool);
	ehci->qtd_pool = NULL;
	FUNC1(ehci->qh_pool);
	ehci->qh_pool = NULL;
	FUNC1(ehci->itd_pool);
	ehci->itd_pool = NULL;
	FUNC1(ehci->sitd_pool);
	ehci->sitd_pool = NULL;

	if (ehci->periodic)
		FUNC0(FUNC2(ehci)->self.sysdev,
			ehci->periodic_size * sizeof (u32),
			ehci->periodic, ehci->periodic_dma);
	ehci->periodic = NULL;

	/* shadow periodic table */
	FUNC3(ehci->pshadow);
	ehci->pshadow = NULL;
}