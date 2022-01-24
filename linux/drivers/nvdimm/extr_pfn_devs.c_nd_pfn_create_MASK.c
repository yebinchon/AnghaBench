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
struct nd_region {int /*<<< orphan*/  dev; } ;
struct nd_pfn {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nd_pfn* FUNC2 (struct nd_region*) ; 
 struct device* FUNC3 (struct nd_pfn*,int /*<<< orphan*/ *) ; 

struct device *FUNC4(struct nd_region *nd_region)
{
	struct nd_pfn *nd_pfn;
	struct device *dev;

	if (!FUNC1(&nd_region->dev))
		return NULL;

	nd_pfn = FUNC2(nd_region);
	dev = FUNC3(nd_pfn, NULL);

	FUNC0(dev);
	return dev;
}