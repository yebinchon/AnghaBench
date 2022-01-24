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
struct nd_region {int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ND_REGION_PERSIST_CACHE ; 
 int /*<<< orphan*/  ND_REGION_PERSIST_MEMCTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nd_region* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region *nd_region = FUNC2(dev);

	if (FUNC1(ND_REGION_PERSIST_CACHE, &nd_region->flags))
		return FUNC0(buf, "cpu_cache\n");
	else if (FUNC1(ND_REGION_PERSIST_MEMCTRL, &nd_region->flags))
		return FUNC0(buf, "memory_controller\n");
	else
		return FUNC0(buf, "\n");
}