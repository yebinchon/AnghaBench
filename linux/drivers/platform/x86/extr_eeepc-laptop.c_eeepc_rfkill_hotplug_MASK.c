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
typedef  int u32 ;
struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ops; } ;
struct eeepc_laptop {int /*<<< orphan*/  hotplug_lock; TYPE_1__ hotplug_slot; scalar_t__ wlan_rfkill; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 scalar_t__ FUNC6 (struct pci_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct pci_dev* FUNC8 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct pci_dev* FUNC10 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC17(struct eeepc_laptop *eeepc, acpi_handle handle)
{
	struct pci_dev *port;
	struct pci_dev *dev;
	struct pci_bus *bus;
	bool blocked = FUNC1(eeepc);
	bool absent;
	u32 l;

	if (eeepc->wlan_rfkill)
		FUNC16(eeepc->wlan_rfkill, blocked);

	FUNC2(&eeepc->hotplug_lock);
	FUNC9();

	if (!eeepc->hotplug_slot.ops)
		goto out_unlock;

	port = FUNC0(handle);
	if (!port) {
		FUNC15("Unable to find port\n");
		goto out_unlock;
	}

	bus = port->subordinate;

	if (!bus) {
		FUNC14("Unable to find PCI bus 1?\n");
		goto out_put_dev;
	}

	if (FUNC6(bus, 0, PCI_VENDOR_ID, &l)) {
		FUNC13("Unable to read PCI config space?\n");
		goto out_put_dev;
	}

	absent = (l == 0xffffffff);

	if (blocked != absent) {
		FUNC14("BIOS says wireless lan is %s, but the pci device is %s\n",
			blocked ? "blocked" : "unblocked",
			absent ? "absent" : "present");
		FUNC14("skipped wireless hotplug as probably inappropriate for this model\n");
		goto out_put_dev;
	}

	if (!blocked) {
		dev = FUNC8(bus, 0);
		if (dev) {
			/* Device already present */
			FUNC7(dev);
			goto out_put_dev;
		}
		dev = FUNC10(bus, 0);
		if (dev) {
			FUNC5(bus);
			FUNC4(dev);
		}
	} else {
		dev = FUNC8(bus, 0);
		if (dev) {
			FUNC11(dev);
			FUNC7(dev);
		}
	}
out_put_dev:
	FUNC7(port);

out_unlock:
	FUNC12();
	FUNC3(&eeepc->hotplug_lock);
}