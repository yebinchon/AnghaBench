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
struct nd_region {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  pfn_ida; } ;
struct device {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; int /*<<< orphan*/  groups; } ;
struct nd_pfn {scalar_t__ id; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_pfn*) ; 
 struct nd_pfn* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_pfn_attribute_groups ; 
 int /*<<< orphan*/  nd_pfn_device_type ; 

__attribute__((used)) static struct nd_pfn *FUNC4(struct nd_region *nd_region)
{
	struct nd_pfn *nd_pfn;
	struct device *dev;

	nd_pfn = FUNC3(sizeof(*nd_pfn), GFP_KERNEL);
	if (!nd_pfn)
		return NULL;

	nd_pfn->id = FUNC1(&nd_region->pfn_ida, 0, 0, GFP_KERNEL);
	if (nd_pfn->id < 0) {
		FUNC2(nd_pfn);
		return NULL;
	}

	dev = &nd_pfn->dev;
	FUNC0(dev, "pfn%d.%d", nd_region->id, nd_pfn->id);
	dev->groups = nd_pfn_attribute_groups;
	dev->type = &nd_pfn_device_type;
	dev->parent = &nd_region->dev;

	return nd_pfn;
}