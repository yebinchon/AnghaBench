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
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ND_DEVICE_DAX_PMEM ; 
 int ND_DEVICE_DIMM ; 
 int ND_DEVICE_REGION_BLK ; 
 int ND_DEVICE_REGION_PMEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	if (FUNC4(dev))
		return ND_DEVICE_DIMM;
	else if (FUNC0(dev))
		return ND_DEVICE_REGION_PMEM;
	else if (FUNC1(dev))
		return ND_DEVICE_REGION_BLK;
	else if (FUNC2(dev))
		return ND_DEVICE_DAX_PMEM;
	else if (FUNC3(dev->parent))
		return FUNC5(FUNC6(dev->parent));

	return 0;
}