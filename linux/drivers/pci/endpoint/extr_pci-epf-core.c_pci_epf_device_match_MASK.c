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
struct pci_epf_driver {scalar_t__ id_table; } ;
struct pci_epf {int /*<<< orphan*/  name; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_epf* FUNC2 (struct device*) ; 
 struct pci_epf_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct pci_epf *epf = FUNC2(dev);
	struct pci_epf_driver *driver = FUNC3(drv);

	if (driver->id_table)
		return FUNC0(driver->id_table, epf);

	return !FUNC1(epf->name, drv->name);
}