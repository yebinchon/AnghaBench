#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_bus {int /*<<< orphan*/  dev; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_PCI_MSI ; 
 struct irq_domain* FUNC0 (struct fwnode_handle*,int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC1 (int /*<<< orphan*/ *) ; 

struct irq_domain *FUNC2(struct pci_bus *bus)
{
	struct fwnode_handle *fwnode;

	if (!&pci_msi_get_fwnode_cb)
		return NULL;

	fwnode = FUNC1(&bus->dev);
	if (!fwnode)
		return NULL;

	return FUNC0(fwnode, DOMAIN_BUS_PCI_MSI);
}