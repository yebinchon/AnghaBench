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
struct nd_device_driver {int (* remove ) (struct device*) ;} ;
struct module {int dummy; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 
 int FUNC5 (struct device*) ; 
 struct module* FUNC6 (struct device*) ; 
 struct nd_device_driver* FUNC7 (TYPE_1__*) ; 
 struct nvdimm_bus* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct nd_device_driver *nd_drv = FUNC7(dev->driver);
	struct module *provider = FUNC6(dev);
	struct nvdimm_bus *nvdimm_bus = FUNC8(dev);
	int rc = 0;

	if (nd_drv->remove) {
		FUNC0(dev);
		rc = nd_drv->remove(dev);
		FUNC1(dev);
	}

	FUNC2(&nvdimm_bus->dev, "%s.remove(%s) = %d\n", dev->driver->name,
			FUNC3(dev), rc);
	FUNC4(provider);
	return rc;
}