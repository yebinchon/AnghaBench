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
struct pci_epf_driver {int (* probe ) (struct pci_epf*) ;} ;
struct pci_epf {struct pci_epf_driver* driver; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct pci_epf*) ; 
 struct pci_epf* FUNC1 (struct device*) ; 
 struct pci_epf_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct pci_epf *epf = FUNC1(dev);
	struct pci_epf_driver *driver = FUNC2(dev->driver);

	if (!driver->probe)
		return -ENODEV;

	epf->driver = driver;

	return driver->probe(epf);
}