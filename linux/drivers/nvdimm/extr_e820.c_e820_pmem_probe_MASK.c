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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvdimm_bus_descriptor {char* provider_name; int /*<<< orphan*/  module; int /*<<< orphan*/  attr_groups; } ;
struct nvdimm_bus {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IORES_DESC_PERSISTENT_MEMORY_LEGACY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  e820_pmem_attribute_groups ; 
 int /*<<< orphan*/  e820_register_one ; 
 struct nvdimm_bus* FUNC1 (struct device*,struct nvdimm_bus_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvdimm_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct nvdimm_bus*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nvdimm_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	static struct nvdimm_bus_descriptor nd_desc;
	struct device *dev = &pdev->dev;
	struct nvdimm_bus *nvdimm_bus;
	int rc = -ENXIO;

	nd_desc.attr_groups = e820_pmem_attribute_groups;
	nd_desc.provider_name = "e820";
	nd_desc.module = THIS_MODULE;
	nvdimm_bus = FUNC1(dev, &nd_desc);
	if (!nvdimm_bus)
		goto err;
	FUNC3(pdev, nvdimm_bus);

	rc = FUNC4(IORES_DESC_PERSISTENT_MEMORY_LEGACY,
			IORESOURCE_MEM, 0, -1, nvdimm_bus, e820_register_one);
	if (rc)
		goto err;
	return 0;
err:
	FUNC2(nvdimm_bus);
	FUNC0(dev, "failed to register legacy persistent memory ranges\n");
	return rc;
}