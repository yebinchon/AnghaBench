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
struct nd_region {int /*<<< orphan*/  ns_ida; } ;
struct nd_namespace_blk {scalar_t__ id; struct nd_namespace_blk* res; struct nd_namespace_blk* uuid; struct nd_namespace_blk* alt_name; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nd_namespace_blk*) ; 
 struct nd_namespace_blk* FUNC2 (struct device*) ; 
 struct nd_region* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct nd_namespace_blk *nsblk = FUNC2(dev);
	struct nd_region *nd_region = FUNC3(dev->parent);

	if (nsblk->id >= 0)
		FUNC0(&nd_region->ns_ida, nsblk->id);
	FUNC1(nsblk->alt_name);
	FUNC1(nsblk->uuid);
	FUNC1(nsblk->res);
	FUNC1(nsblk);
}