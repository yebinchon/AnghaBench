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
struct pci_bus {int /*<<< orphan*/  dev; TYPE_1__* ops; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove_bus ) (struct pci_bus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct pci_bus *bus)
{
	FUNC4(bus);

	FUNC1(&pci_bus_sem);
	FUNC2(&bus->node);
	FUNC3(bus);
	FUNC8(&pci_bus_sem);
	FUNC5(bus);

	if (bus->ops->remove_bus)
		bus->ops->remove_bus(bus);

	FUNC6(bus);
	FUNC0(&bus->dev);
}