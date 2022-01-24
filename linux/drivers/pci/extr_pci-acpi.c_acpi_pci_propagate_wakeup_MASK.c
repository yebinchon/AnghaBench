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
struct pci_bus {int /*<<< orphan*/ * bridge; struct pci_bus* parent; TYPE_1__* self; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct pci_bus *bus, bool enable)
{
	while (bus->parent) {
		if (FUNC0(&bus->self->dev))
			return FUNC1(&bus->self->dev, enable);

		bus = bus->parent;
	}

	/* We have reached the root bus. */
	if (bus->bridge) {
		if (FUNC0(bus->bridge))
			return FUNC1(bus->bridge, enable);
	}
	return 0;
}