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
struct nvdimm_bus {int /*<<< orphan*/  dev; } ;
struct nd_device_driver {int /*<<< orphan*/  (* shutdown ) (struct device*) ;} ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct nd_device_driver* FUNC3 (TYPE_1__*) ; 
 struct nvdimm_bus* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct nvdimm_bus *nvdimm_bus = FUNC4(dev);
	struct nd_device_driver *nd_drv = NULL;

	if (dev->driver)
		nd_drv = FUNC3(dev->driver);

	if (nd_drv && nd_drv->shutdown) {
		nd_drv->shutdown(dev);
		FUNC0(&nvdimm_bus->dev, "%s.shutdown(%s)\n",
				dev->driver->name, FUNC1(dev));
	}
}