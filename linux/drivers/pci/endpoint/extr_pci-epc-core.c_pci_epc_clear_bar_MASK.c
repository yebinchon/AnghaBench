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
typedef  scalar_t__ u8 ;
struct pci_epf_bar {scalar_t__ barno; int flags; } ;
struct pci_epc {scalar_t__ max_functions; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear_bar ) (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ;} ;

/* Variables and functions */
 scalar_t__ BAR_5 ; 
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ; 

void FUNC4(struct pci_epc *epc, u8 func_no,
		       struct pci_epf_bar *epf_bar)
{
	unsigned long flags;

	if (FUNC0(epc) || func_no >= epc->max_functions ||
	    (epf_bar->barno == BAR_5 &&
	     epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64))
		return;

	if (!epc->ops->clear_bar)
		return;

	FUNC1(&epc->lock, flags);
	epc->ops->clear_bar(epc, func_no, epf_bar);
	FUNC2(&epc->lock, flags);
}