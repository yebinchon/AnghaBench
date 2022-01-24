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
struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 unsigned long long FUNC2 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long long) ; 
 struct nd_region* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region *nd_region = FUNC6(dev);
	unsigned long long available = 0;

	/*
	 * Flush in-flight updates and grab a snapshot of the available
	 * size.  Of course, this value is potentially invalidated the
	 * memory nvdimm_bus_lock() is dropped, but that's userspace's
	 * problem to not race itself.
	 */
	FUNC0(dev);
	FUNC3(dev);
	FUNC7(dev);
	available = FUNC2(nd_region);
	FUNC4(dev);
	FUNC1(dev);

	return FUNC5(buf, "%llu\n", available);
}