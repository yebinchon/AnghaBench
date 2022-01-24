#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_bus_descriptor {int /*<<< orphan*/  of_node; int /*<<< orphan*/  attr_groups; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * bus; int /*<<< orphan*/  groups; int /*<<< orphan*/  release; struct device* parent; } ;
struct nvdimm_bus {scalar_t__ id; TYPE_1__ dev; struct nvdimm_bus_descriptor* nd_desc; int /*<<< orphan*/  badrange; int /*<<< orphan*/  reconfig_mutex; int /*<<< orphan*/  wait; int /*<<< orphan*/  mapping_list; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvdimm_bus*) ; 
 struct nvdimm_bus* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nd_ida ; 
 int /*<<< orphan*/  nvdimm_bus_release ; 
 int /*<<< orphan*/  nvdimm_bus_type ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

struct nvdimm_bus *FUNC11(struct device *parent,
		struct nvdimm_bus_descriptor *nd_desc)
{
	struct nvdimm_bus *nvdimm_bus;
	int rc;

	nvdimm_bus = FUNC8(sizeof(*nvdimm_bus), GFP_KERNEL);
	if (!nvdimm_bus)
		return NULL;
	FUNC0(&nvdimm_bus->list);
	FUNC0(&nvdimm_bus->mapping_list);
	FUNC6(&nvdimm_bus->wait);
	nvdimm_bus->id = FUNC5(&nd_ida, 0, 0, GFP_KERNEL);
	if (nvdimm_bus->id < 0) {
		FUNC7(nvdimm_bus);
		return NULL;
	}
	FUNC9(&nvdimm_bus->reconfig_mutex);
	FUNC1(&nvdimm_bus->badrange);
	nvdimm_bus->nd_desc = nd_desc;
	nvdimm_bus->dev.parent = parent;
	nvdimm_bus->dev.release = nvdimm_bus_release;
	nvdimm_bus->dev.groups = nd_desc->attr_groups;
	nvdimm_bus->dev.bus = &nvdimm_bus_type;
	nvdimm_bus->dev.of_node = nd_desc->of_node;
	FUNC3(&nvdimm_bus->dev, "ndbus%d", nvdimm_bus->id);
	rc = FUNC4(&nvdimm_bus->dev);
	if (rc) {
		FUNC2(&nvdimm_bus->dev, "registration failed: %d\n", rc);
		goto err;
	}

	return nvdimm_bus;
 err:
	FUNC10(&nvdimm_bus->dev);
	return NULL;
}