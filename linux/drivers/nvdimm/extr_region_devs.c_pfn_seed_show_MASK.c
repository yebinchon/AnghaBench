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
struct nd_region {scalar_t__ pfn_seed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 struct nd_region* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region *nd_region = FUNC4(dev);
	ssize_t rc;

	FUNC1(dev);
	if (nd_region->pfn_seed)
		rc = FUNC3(buf, "%s\n", FUNC0(nd_region->pfn_seed));
	else
		rc = FUNC3(buf, "\n");
	FUNC2(dev);

	return rc;
}