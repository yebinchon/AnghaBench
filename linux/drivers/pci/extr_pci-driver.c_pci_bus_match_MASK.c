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
struct pci_driver {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  match_driver; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct pci_device_id* FUNC0 (struct pci_driver*,struct pci_dev*) ; 
 struct pci_dev* FUNC1 (struct device*) ; 
 struct pci_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct pci_dev *pci_dev = FUNC1(dev);
	struct pci_driver *pci_drv;
	const struct pci_device_id *found_id;

	if (!pci_dev->match_driver)
		return 0;

	pci_drv = FUNC2(drv);
	found_id = FUNC0(pci_drv, pci_dev);
	if (found_id)
		return 1;

	return 0;
}