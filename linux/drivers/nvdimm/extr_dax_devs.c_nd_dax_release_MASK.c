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
struct nd_region {int /*<<< orphan*/  dax_ida; } ;
struct nd_pfn {struct nd_dax* uuid; int /*<<< orphan*/  id; int /*<<< orphan*/  ndns; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_dax*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct nd_dax* FUNC4 (struct device*) ; 
 struct nd_region* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct nd_region *nd_region = FUNC5(dev->parent);
	struct nd_dax *nd_dax = FUNC4(dev);
	struct nd_pfn *nd_pfn = &nd_dax->nd_pfn;

	FUNC0(dev, "trace\n");
	FUNC3(dev, &nd_pfn->ndns);
	FUNC1(&nd_region->dax_ida, nd_pfn->id);
	FUNC2(nd_pfn->uuid);
	FUNC2(nd_dax);
}