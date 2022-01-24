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
struct pcie_port_service_driver {int /*<<< orphan*/  (* error_resume ) (int /*<<< orphan*/ ) ;} ;
struct pcie_device {int /*<<< orphan*/  port; } ;
struct device {scalar_t__ driver; int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  pcie_port_bus_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcie_device* FUNC1 (struct device*) ; 
 struct pcie_port_service_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *device, void *data)
{
	struct pcie_device *pcie_device;
	struct pcie_port_service_driver *driver;

	if (device->bus == &pcie_port_bus_type && device->driver) {
		driver = FUNC2(device->driver);
		if (driver && driver->error_resume) {
			pcie_device = FUNC1(device);

			/* Forward error message to service drivers */
			driver->error_resume(pcie_device->port);
		}
	}

	return 0;
}