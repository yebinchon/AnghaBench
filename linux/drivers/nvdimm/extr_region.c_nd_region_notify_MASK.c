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
struct resource {scalar_t__ end; scalar_t__ start; } ;
struct nd_region {scalar_t__ bb_state; int /*<<< orphan*/  bb; scalar_t__ ndr_size; scalar_t__ ndr_start; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;

/* Variables and functions */
 int NVDIMM_REVALIDATE_POISON ; 
 int /*<<< orphan*/  child_notify ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_region*,int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct nd_region* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, enum nvdimm_event event)
{
	if (event == NVDIMM_REVALIDATE_POISON) {
		struct nd_region *nd_region = FUNC4(dev);
		struct resource res;

		if (FUNC1(&nd_region->dev)) {
			res.start = nd_region->ndr_start;
			res.end = nd_region->ndr_start +
				nd_region->ndr_size - 1;
			FUNC2(nd_region,
					&nd_region->bb, &res);
			if (nd_region->bb_state)
				FUNC3(nd_region->bb_state);
		}
	}
	FUNC0(dev, &event, child_notify);
}