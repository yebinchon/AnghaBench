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
typedef  int u16 ;
struct pci_epc {scalar_t__ max_functions; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_msix ) (struct pci_epc*,scalar_t__,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct pci_epc*,scalar_t__,int) ; 

int FUNC4(struct pci_epc *epc, u8 func_no, u16 interrupts)
{
	int ret;
	unsigned long flags;

	if (FUNC0(epc) || func_no >= epc->max_functions ||
	    interrupts < 1 || interrupts > 2048)
		return -EINVAL;

	if (!epc->ops->set_msix)
		return 0;

	FUNC1(&epc->lock, flags);
	ret = epc->ops->set_msix(epc, func_no, interrupts - 1);
	FUNC2(&epc->lock, flags);

	return ret;
}