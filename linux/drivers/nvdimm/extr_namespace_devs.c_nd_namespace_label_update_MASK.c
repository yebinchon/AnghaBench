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
struct nd_region {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  res; } ;
struct nd_namespace_pmem {scalar_t__ uuid; TYPE_1__ nsio; } ;
struct nd_namespace_blk {int /*<<< orphan*/  lbasize; scalar_t__ uuid; } ;
struct device {scalar_t__ driver; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_4__ {scalar_t__ claim; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (struct nd_region*,struct nd_namespace_blk*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct nd_namespace_blk*) ; 
 int FUNC5 (struct nd_region*,struct nd_namespace_pmem*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct nd_namespace_blk* FUNC7 (struct device*) ; 
 struct nd_namespace_pmem* FUNC8 (struct device*) ; 
 TYPE_2__* FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct nd_region *nd_region,
		struct device *dev)
{
	FUNC0(dev, dev->driver || FUNC9(dev)->claim,
			"namespace must be idle during label update\n");
	if (dev->driver || FUNC9(dev)->claim)
		return 0;

	/*
	 * Only allow label writes that will result in a valid namespace
	 * or deletion of an existing namespace.
	 */
	if (FUNC2(dev)) {
		struct nd_namespace_pmem *nspm = FUNC8(dev);
		resource_size_t size = FUNC6(&nspm->nsio.res);

		if (size == 0 && nspm->uuid)
			/* delete allocation */;
		else if (!nspm->uuid)
			return 0;

		return FUNC5(nd_region, nspm, size);
	} else if (FUNC1(dev)) {
		struct nd_namespace_blk *nsblk = FUNC7(dev);
		resource_size_t size = FUNC4(nsblk);

		if (size == 0 && nsblk->uuid)
			/* delete allocation */;
		else if (!nsblk->uuid || !nsblk->lbasize)
			return 0;

		return FUNC3(nd_region, nsblk, size);
	} else
		return -ENXIO;
}