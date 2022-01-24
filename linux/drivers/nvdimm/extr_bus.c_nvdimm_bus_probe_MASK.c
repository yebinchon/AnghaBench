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
struct nd_device_driver {int (* probe ) (struct device*) ;} ;
struct module {int dummy; } ;
struct device {TYPE_1__* driver; scalar_t__ parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvdimm_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvdimm_bus*) ; 
 int FUNC9 (struct device*) ; 
 struct module* FUNC10 (struct device*) ; 
 struct nd_device_driver* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct module*) ; 
 struct nvdimm_bus* FUNC14 (struct device*) ; 

__attribute__((used)) static int FUNC15(struct device *dev)
{
	struct nd_device_driver *nd_drv = FUNC11(dev->driver);
	struct module *provider = FUNC10(dev);
	struct nvdimm_bus *nvdimm_bus = FUNC14(dev);
	int rc;

	if (!FUNC13(provider))
		return -ENXIO;

	FUNC2(&nvdimm_bus->dev, "START: %s.probe(%s)\n",
			dev->driver->name, FUNC3(dev));

	FUNC8(nvdimm_bus);
	FUNC0(dev);
	rc = nd_drv->probe(dev);
	FUNC1(dev);

	if ((rc == 0 || rc == -EOPNOTSUPP) &&
			dev->parent && FUNC4(dev->parent))
		FUNC6(FUNC12(dev->parent), dev);
	FUNC7(nvdimm_bus);

	FUNC2(&nvdimm_bus->dev, "END: %s.probe(%s) = %d\n", dev->driver->name,
			FUNC3(dev), rc);

	if (rc != 0)
		FUNC5(provider);
	return rc;
}