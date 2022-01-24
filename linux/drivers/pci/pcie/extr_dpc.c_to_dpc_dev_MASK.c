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
struct pci_dev {int dummy; } ;
struct dpc_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_PORT_SERVICE_DPC ; 
 struct dpc_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static struct dpc_dev *FUNC3(struct pci_dev *dev)
{
	struct device *device;

	device = FUNC1(dev, PCIE_PORT_SERVICE_DPC);
	if (!device)
		return NULL;
	return FUNC0(FUNC2(device));
}