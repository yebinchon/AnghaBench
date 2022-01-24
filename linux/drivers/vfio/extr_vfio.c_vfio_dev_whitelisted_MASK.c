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
struct pci_dev {scalar_t__ hdr_type; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_HEADER_TYPE_NORMAL ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  vfio_driver_whitelist ; 

__attribute__((used)) static bool FUNC4(struct device *dev, struct device_driver *drv)
{
	if (FUNC1(dev)) {
		struct pci_dev *pdev = FUNC3(dev);

		if (pdev->hdr_type != PCI_HEADER_TYPE_NORMAL)
			return true;
	}

	return FUNC2(vfio_driver_whitelist,
			    FUNC0(vfio_driver_whitelist),
			    drv->name) >= 0;
}