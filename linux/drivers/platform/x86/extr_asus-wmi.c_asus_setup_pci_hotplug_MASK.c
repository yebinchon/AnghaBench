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
struct asus_wmi {int /*<<< orphan*/  hotplug_workqueue; TYPE_1__ hotplug_slot; int /*<<< orphan*/  hotplug_work; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asus_hotplug_slot_ops ; 
 int /*<<< orphan*/  asus_hotplug_work ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pci_bus* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,struct pci_bus*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct asus_wmi *asus)
{
	int ret = -ENOMEM;
	struct pci_bus *bus = FUNC3(0, 1);

	if (!bus) {
		FUNC5("Unable to find wifi PCI bus\n");
		return -ENODEV;
	}

	asus->hotplug_workqueue =
	    FUNC1("hotplug_workqueue");
	if (!asus->hotplug_workqueue)
		goto error_workqueue;

	FUNC0(&asus->hotplug_work, asus_hotplug_work);

	asus->hotplug_slot.ops = &asus_hotplug_slot_ops;

	ret = FUNC4(&asus->hotplug_slot, bus, 0, "asus-wifi");
	if (ret) {
		FUNC5("Unable to register hotplug slot - %d\n", ret);
		goto error_register;
	}

	return 0;

error_register:
	asus->hotplug_slot.ops = NULL;
	FUNC2(asus->hotplug_workqueue);
error_workqueue:
	return ret;
}