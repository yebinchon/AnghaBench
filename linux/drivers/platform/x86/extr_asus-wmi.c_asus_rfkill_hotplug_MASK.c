#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;
struct TYPE_4__ {scalar_t__ ops; } ;
struct TYPE_3__ {scalar_t__ rfkill; } ;
struct asus_wmi {int /*<<< orphan*/  hotplug_lock; TYPE_2__ hotplug_slot; TYPE_1__ wlan; int /*<<< orphan*/  wmi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 int FUNC0 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 scalar_t__ FUNC5 (struct pci_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_bus* FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC8 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct pci_dev* FUNC10 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC16(struct asus_wmi *asus)
{
	struct pci_dev *dev;
	struct pci_bus *bus;
	bool blocked;
	bool absent;
	u32 l;

	FUNC1(&asus->wmi_lock);
	blocked = FUNC0(asus);
	FUNC2(&asus->wmi_lock);

	FUNC1(&asus->hotplug_lock);
	FUNC9();

	if (asus->wlan.rfkill)
		FUNC15(asus->wlan.rfkill, blocked);

	if (asus->hotplug_slot.ops) {
		bus = FUNC7(0, 1);
		if (!bus) {
			FUNC14("Unable to find PCI bus 1?\n");
			goto out_unlock;
		}

		if (FUNC5(bus, 0, PCI_VENDOR_ID, &l)) {
			FUNC13("Unable to read PCI config space?\n");
			goto out_unlock;
		}
		absent = (l == 0xffffffff);

		if (blocked != absent) {
			FUNC14("BIOS says wireless lan is %s, "
				"but the pci device is %s\n",
				blocked ? "blocked" : "unblocked",
				absent ? "absent" : "present");
			FUNC14("skipped wireless hotplug as probably "
				"inappropriate for this model\n");
			goto out_unlock;
		}

		if (!blocked) {
			dev = FUNC8(bus, 0);
			if (dev) {
				/* Device already present */
				FUNC6(dev);
				goto out_unlock;
			}
			dev = FUNC10(bus, 0);
			if (dev) {
				FUNC4(bus);
				FUNC3(dev);
			}
		} else {
			dev = FUNC8(bus, 0);
			if (dev) {
				FUNC11(dev);
				FUNC6(dev);
			}
		}
	}

out_unlock:
	FUNC12();
	FUNC2(&asus->hotplug_lock);
}