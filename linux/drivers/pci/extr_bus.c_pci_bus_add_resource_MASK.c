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
struct resource {int dummy; } ;
struct pci_bus_resource {unsigned int flags; int /*<<< orphan*/  list; struct resource* res; } ;
struct pci_bus {int /*<<< orphan*/  resources; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*) ; 
 struct pci_bus_resource* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct pci_bus *bus, struct resource *res,
			  unsigned int flags)
{
	struct pci_bus_resource *bus_res;

	bus_res = FUNC1(sizeof(struct pci_bus_resource), GFP_KERNEL);
	if (!bus_res) {
		FUNC0(&bus->dev, "can't add %pR resource\n", res);
		return;
	}

	bus_res->res = res;
	bus_res->flags = flags;
	FUNC2(&bus_res->list, &bus->resources);
}