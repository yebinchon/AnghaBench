#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct nd_region {int /*<<< orphan*/  id; int /*<<< orphan*/  ns_ida; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {struct resource res; TYPE_1__ common; } ;
struct nd_namespace_pmem {scalar_t__ id; TYPE_2__ nsio; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_namespace_pmem*) ; 
 struct nd_namespace_pmem* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namespace_pmem_device_type ; 
 int /*<<< orphan*/  nd_namespace_attribute_groups ; 
 int /*<<< orphan*/  FUNC6 (struct nd_region*,struct nd_namespace_pmem*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device *FUNC7(struct nd_region *nd_region)
{
	struct nd_namespace_pmem *nspm;
	struct resource *res;
	struct device *dev;

	if (!FUNC3(&nd_region->dev))
		return NULL;

	nspm = FUNC5(sizeof(*nspm), GFP_KERNEL);
	if (!nspm)
		return NULL;

	dev = &nspm->nsio.common.dev;
	dev->type = &namespace_pmem_device_type;
	dev->parent = &nd_region->dev;
	res = &nspm->nsio.res;
	res->name = FUNC0(&nd_region->dev);
	res->flags = IORESOURCE_MEM;

	nspm->id = FUNC2(&nd_region->ns_ida, 0, 0, GFP_KERNEL);
	if (nspm->id < 0) {
		FUNC4(nspm);
		return NULL;
	}
	FUNC1(dev, "namespace%d.%d", nd_region->id, nspm->id);
	dev->groups = nd_namespace_attribute_groups;
	FUNC6(nd_region, nspm, 0);

	return dev;
}