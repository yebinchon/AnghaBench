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
struct pci_dev {TYPE_1__* p2pdma; } ;
typedef  int /*<<< orphan*/  pci_bus_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

pci_bus_addr_t FUNC1(struct pci_dev *pdev, void *addr)
{
	if (!addr)
		return 0;
	if (!pdev->p2pdma)
		return 0;

	/*
	 * Note: when we added the memory to the pool we used the PCI
	 * bus address as the physical address. So gen_pool_virt_to_phys()
	 * actually returns the bus address despite the misleading name.
	 */
	return FUNC0(pdev->p2pdma->pool, (unsigned long)addr);
}