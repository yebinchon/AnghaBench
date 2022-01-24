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
struct nd_region {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  ns_ida; } ;
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct TYPE_2__ {struct device dev; } ;
struct nd_namespace_blk {scalar_t__ id; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_namespace_blk*) ; 
 struct nd_namespace_blk* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namespace_blk_device_type ; 
 int /*<<< orphan*/  nd_namespace_attribute_groups ; 

__attribute__((used)) static struct device *FUNC5(struct nd_region *nd_region)
{
	struct nd_namespace_blk *nsblk;
	struct device *dev;

	if (!FUNC2(&nd_region->dev))
		return NULL;

	nsblk = FUNC4(sizeof(*nsblk), GFP_KERNEL);
	if (!nsblk)
		return NULL;

	dev = &nsblk->common.dev;
	dev->type = &namespace_blk_device_type;
	nsblk->id = FUNC1(&nd_region->ns_ida, 0, 0, GFP_KERNEL);
	if (nsblk->id < 0) {
		FUNC3(nsblk);
		return NULL;
	}
	FUNC0(dev, "namespace%d.%d", nd_region->id, nsblk->id);
	dev->parent = &nd_region->dev;
	dev->groups = nd_namespace_attribute_groups;

	return &nsblk->common.dev;
}