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
struct nd_region {scalar_t__ ndr_start; scalar_t__ ndr_size; scalar_t__ bb_state; int /*<<< orphan*/  bb; } ;
struct device {int dummy; } ;
struct clear_badblocks_context {scalar_t__ phys; int cleared; } ;
typedef  int sector_t ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct nd_region* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct clear_badblocks_context *ctx = data;
	struct nd_region *nd_region;
	resource_size_t ndr_end;
	sector_t sector;

	/* make sure device is a region */
	if (!FUNC1(dev))
		return 0;

	nd_region = FUNC3(dev);
	ndr_end = nd_region->ndr_start + nd_region->ndr_size - 1;

	/* make sure we are in the region */
	if (ctx->phys < nd_region->ndr_start
			|| (ctx->phys + ctx->cleared) > ndr_end)
		return 0;

	sector = (ctx->phys - nd_region->ndr_start) / 512;
	FUNC0(&nd_region->bb, sector, ctx->cleared / 512);

	if (nd_region->bb_state)
		FUNC2(nd_region->bb_state);

	return 0;
}