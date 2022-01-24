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
typedef  int /*<<< orphan*/  u32 ;
struct xen_pci_op {unsigned int devfn; int offset; int size; int /*<<< orphan*/  value; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; int /*<<< orphan*/  cmd; } ;
struct pcifront_sd {int dummy; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_bus {int /*<<< orphan*/  number; struct pcifront_sd* sysdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  XEN_PCI_OP_conf_read ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct pcifront_device*,struct xen_pci_op*) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_bus*) ; 
 struct pcifront_device* FUNC7 (struct pcifront_sd*) ; 
 scalar_t__ verbose_request ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, unsigned int devfn,
			     int where, int size, u32 *val)
{
	int err = 0;
	struct xen_pci_op op = {
		.cmd    = XEN_PCI_OP_conf_read,
		.domain = FUNC6(bus),
		.bus    = bus->number,
		.devfn  = devfn,
		.offset = where,
		.size   = size,
	};
	struct pcifront_sd *sd = bus->sysdata;
	struct pcifront_device *pdev = FUNC7(sd);

	if (verbose_request)
		FUNC2(&pdev->xdev->dev,
			 "read dev=%04x:%02x:%02x.%d - offset %x size %d\n",
			 FUNC6(bus), bus->number, FUNC1(devfn),
			 FUNC0(devfn), where, size);

	err = FUNC3(pdev, &op);

	if (FUNC5(!err)) {
		if (verbose_request)
			FUNC2(&pdev->xdev->dev, "read got back value %x\n",
				 op.value);

		*val = op.value;
	} else if (err == -ENODEV) {
		/* No device here, pretend that it just returned 0 */
		err = 0;
		*val = 0;
	}

	return FUNC4(err);
}