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
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct eeepc_laptop {TYPE_1__ hotplug_slot; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  eeepc_hotplug_slot_ops ; 
 struct pci_bus* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,struct pci_bus*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct eeepc_laptop *eeepc)
{
	int ret = -ENOMEM;
	struct pci_bus *bus = FUNC0(0, 1);

	if (!bus) {
		FUNC2("Unable to find wifi PCI bus\n");
		return -ENODEV;
	}

	eeepc->hotplug_slot.ops = &eeepc_hotplug_slot_ops;

	ret = FUNC1(&eeepc->hotplug_slot, bus, 0, "eeepc-wifi");
	if (ret) {
		FUNC2("Unable to register hotplug slot - %d\n", ret);
		goto error_register;
	}

	return 0;

error_register:
	eeepc->hotplug_slot.ops = NULL;
	return ret;
}