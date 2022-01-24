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
typedef  int /*<<< orphan*/  u64 ;
struct pci_epc {scalar_t__ max_functions; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int (* map_addr ) (struct pci_epc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct pci_epc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

int FUNC4(struct pci_epc *epc, u8 func_no,
		     phys_addr_t phys_addr, u64 pci_addr, size_t size)
{
	int ret;
	unsigned long flags;

	if (FUNC0(epc) || func_no >= epc->max_functions)
		return -EINVAL;

	if (!epc->ops->map_addr)
		return 0;

	FUNC1(&epc->lock, flags);
	ret = epc->ops->map_addr(epc, func_no, phys_addr, pci_addr, size);
	FUNC2(&epc->lock, flags);

	return ret;
}