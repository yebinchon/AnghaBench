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
struct pci_host_bridge {scalar_t__ native_shpc_hotplug; int /*<<< orphan*/  dev; } ;
struct pci_dev {struct pci_bus* bus; int /*<<< orphan*/  dev; } ;
struct pci_bus {struct pci_bus* parent; } ;
struct acpi_pci_root {scalar_t__ osc_support_set; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct acpi_pci_root* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct pci_host_bridge* FUNC10 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,char*,...) ; 

int FUNC12(struct pci_dev *pdev)
{
	const struct pci_host_bridge *host;
	const struct acpi_pci_root *root;
	acpi_status status;
	acpi_handle chandle, handle;
	struct acpi_buffer string = { ACPI_ALLOCATE_BUFFER, NULL };

	/*
	 * If there's no ACPI host bridge (i.e., ACPI support is compiled
	 * into the kernel but the hardware platform doesn't support ACPI),
	 * there's nothing to do here.
	 */
	host = FUNC10(pdev->bus);
	root = FUNC6(FUNC1(&host->dev));
	if (!root)
		return 0;

	/*
	 * If _OSC exists, it determines whether we're allowed to manage
	 * the SHPC.  We executed it while enumerating the host bridge.
	 */
	if (root->osc_support_set) {
		if (host->native_shpc_hotplug)
			return 0;
		return -ENODEV;
	}

	/*
	 * In the absence of _OSC, we're always allowed to manage the SHPC.
	 * However, if an OSHP method is present, we must execute it so the
	 * firmware can transfer control to the OS, e.g., direct interrupts
	 * to the OS instead of to the firmware.
	 *
	 * N.B. The PCI Firmware Spec (r3.2, sec 4.8) does not endorse
	 * searching up the ACPI hierarchy, so the loops below are suspect.
	 */
	handle = FUNC1(&pdev->dev);
	if (!handle) {
		/*
		 * This hotplug controller was not listed in the ACPI name
		 * space at all. Try to get ACPI handle of parent PCI bus.
		 */
		struct pci_bus *pbus;
		for (pbus = pdev->bus; pbus; pbus = pbus->parent) {
			handle = FUNC7(pbus);
			if (handle)
				break;
		}
	}

	while (handle) {
		FUNC3(handle, ACPI_FULL_PATHNAME, &string);
		FUNC11(pdev, "Requesting control of SHPC hotplug via OSHP (%s)\n",
			 (char *)string.pointer);
		status = FUNC8(handle);
		if (FUNC2(status))
			goto got_one;
		if (FUNC5(handle))
			break;
		chandle = handle;
		status = FUNC4(chandle, &handle);
		if (FUNC0(status))
			break;
	}

	FUNC11(pdev, "Cannot get control of SHPC hotplug\n");
	FUNC9(string.pointer);
	return -ENODEV;
got_one:
	FUNC11(pdev, "Gained control of SHPC hotplug (%s)\n",
		 (char *)string.pointer);
	FUNC9(string.pointer);
	return 0;
}