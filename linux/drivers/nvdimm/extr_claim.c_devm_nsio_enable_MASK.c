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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct nd_namespace_common {TYPE_1__ dev; int /*<<< orphan*/  rw_bytes; } ;
struct nd_namespace_io {int /*<<< orphan*/  addr; struct resource res; int /*<<< orphan*/  bb; int /*<<< orphan*/  size; struct nd_namespace_common common; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_MEMREMAP_PMEM ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct resource*) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsio_rw_bytes ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct device *dev, struct nd_namespace_io *nsio)
{
	struct resource *res = &nsio->res;
	struct nd_namespace_common *ndns = &nsio->common;

	nsio->size = FUNC7(res);
	if (!FUNC5(dev, res->start, FUNC7(res),
				FUNC1(&ndns->dev))) {
		FUNC2(dev, "could not reserve region %pR\n", res);
		return -EBUSY;
	}

	ndns->rw_bytes = nsio_rw_bytes;
	if (FUNC3(dev, &nsio->bb))
		return -ENOMEM;
	FUNC6(FUNC8(ndns->dev.parent), &nsio->bb,
			&nsio->res);

	nsio->addr = FUNC4(dev, res->start, FUNC7(res),
			ARCH_MEMREMAP_PMEM);

	return FUNC0(nsio->addr);
}