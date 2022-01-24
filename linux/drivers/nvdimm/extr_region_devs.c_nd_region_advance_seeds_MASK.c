#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nd_region {struct device* ns_seed; struct device* dax_seed; struct device* pfn_seed; struct device* btt_seed; } ;
struct nd_pfn {TYPE_2__* ndns; } ;
struct TYPE_8__ {TYPE_3__* ndns; } ;
struct nd_dax {TYPE_4__ nd_pfn; } ;
struct nd_btt {TYPE_1__* ndns; } ;
struct device {int dummy; } ;
struct TYPE_7__ {struct device dev; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct nd_btt* FUNC9 (struct device*) ; 
 struct nd_dax* FUNC10 (struct device*) ; 
 struct nd_pfn* FUNC11 (struct device*) ; 

void FUNC12(struct nd_region *nd_region, struct device *dev)
{
	FUNC7(dev);
	if (nd_region->ns_seed == dev) {
		FUNC5(nd_region);
	} else if (FUNC0(dev)) {
		struct nd_btt *nd_btt = FUNC9(dev);

		if (nd_region->btt_seed == dev)
			FUNC3(nd_region);
		if (nd_region->ns_seed == &nd_btt->ndns->dev)
			FUNC5(nd_region);
	} else if (FUNC2(dev)) {
		struct nd_pfn *nd_pfn = FUNC11(dev);

		if (nd_region->pfn_seed == dev)
			FUNC6(nd_region);
		if (nd_region->ns_seed == &nd_pfn->ndns->dev)
			FUNC5(nd_region);
	} else if (FUNC1(dev)) {
		struct nd_dax *nd_dax = FUNC10(dev);

		if (nd_region->dax_seed == dev)
			FUNC4(nd_region);
		if (nd_region->ns_seed == &nd_dax->nd_pfn.ndns->dev)
			FUNC5(nd_region);
	}
	FUNC8(dev);
}