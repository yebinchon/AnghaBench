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
struct nd_region {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {scalar_t__ force_raw; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ ARCH_MEMREMAP_PMEM ; 
 int /*<<< orphan*/  CONFIG_ZONE_DEVICE ; 
 int /*<<< orphan*/  IORESOURCE_SYSTEM_RAM ; 
 int /*<<< orphan*/  IORES_DESC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEMREMAP_WB ; 
 int /*<<< orphan*/  ND_REGION_PAGEMAP ; 
 scalar_t__ REGION_MIXED ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nd_namespace_io* FUNC6 (struct device*) ; 
 struct nd_region* FUNC7 (int /*<<< orphan*/ ) ; 
 struct nd_namespace_common* FUNC8 (struct device*) ; 

bool FUNC9(struct device *dev)
{
	struct nd_region *nd_region = FUNC7(dev->parent);
	struct nd_namespace_common *ndns = FUNC8(dev);
	struct nd_namespace_io *nsio;

	if (!FUNC0(CONFIG_ZONE_DEVICE))
		return false;

	if (!FUNC5(ND_REGION_PAGEMAP, &nd_region->flags))
		return false;

	if (FUNC2(dev) || FUNC1(dev))
		return false;

	if (ndns->force_raw)
		return false;

	nsio = FUNC6(dev);
	if (FUNC3(nsio->res.start, FUNC4(&nsio->res),
				IORESOURCE_SYSTEM_RAM,
				IORES_DESC_NONE) == REGION_MIXED)
		return false;

	return ARCH_MEMREMAP_PMEM == MEMREMAP_WB;
}