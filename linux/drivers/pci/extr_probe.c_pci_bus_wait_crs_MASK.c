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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC8(struct pci_bus *bus, int devfn, u32 *l,
			     int timeout)
{
	int delay = 1;

	if (!FUNC3(*l))
		return true;	/* not a CRS completion */

	if (!timeout)
		return false;	/* CRS, but caller doesn't want to wait */

	/*
	 * We got the reserved Vendor ID that indicates a completion with
	 * Configuration Request Retry Status (CRS).  Retry until we get a
	 * valid Vendor ID or we time out.
	 */
	while (FUNC3(*l)) {
		if (delay > timeout) {
			FUNC7("pci %04x:%02x:%02x.%d: not ready after %dms; giving up\n",
				FUNC5(bus), bus->number,
				FUNC1(devfn), FUNC0(devfn), delay - 1);

			return false;
		}
		if (delay >= 1000)
			FUNC6("pci %04x:%02x:%02x.%d: not ready after %dms; waiting\n",
				FUNC5(bus), bus->number,
				FUNC1(devfn), FUNC0(devfn), delay - 1);

		FUNC2(delay);
		delay *= 2;

		if (FUNC4(bus, devfn, PCI_VENDOR_ID, l))
			return false;
	}

	if (delay >= 1000)
		FUNC6("pci %04x:%02x:%02x.%d: ready after %dms\n",
			FUNC5(bus), bus->number,
			FUNC1(devfn), FUNC0(devfn), delay - 1);

	return true;
}