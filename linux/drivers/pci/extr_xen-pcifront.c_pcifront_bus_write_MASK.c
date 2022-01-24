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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  XEN_PCI_OP_conf_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcifront_device*,struct xen_pci_op*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 struct pcifront_device* FUNC6 (struct pcifront_sd*) ; 
 scalar_t__ verbose_request ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus, unsigned int devfn,
			      int where, int size, u32 val)
{
	struct xen_pci_op op = {
		.cmd    = XEN_PCI_OP_conf_write,
		.domain = FUNC5(bus),
		.bus    = bus->number,
		.devfn  = devfn,
		.offset = where,
		.size   = size,
		.value  = val,
	};
	struct pcifront_sd *sd = bus->sysdata;
	struct pcifront_device *pdev = FUNC6(sd);

	if (verbose_request)
		FUNC2(&pdev->xdev->dev,
			 "write dev=%04x:%02x:%02x.%d - "
			 "offset %x size %d val %x\n",
			 FUNC5(bus), bus->number,
			 FUNC1(devfn), FUNC0(devfn), where, size, val);

	return FUNC4(FUNC3(pdev, &op));
}