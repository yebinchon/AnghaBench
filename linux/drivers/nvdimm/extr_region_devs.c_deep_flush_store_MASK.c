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
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nd_region*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int*) ; 
 struct nd_region* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t len)
{
	bool flush;
	int rc = FUNC1(buf, &flush);
	struct nd_region *nd_region = FUNC2(dev);

	if (rc)
		return rc;
	if (!flush)
		return -EINVAL;
	rc = FUNC0(nd_region, NULL);
	if (rc)
		return rc;

	return len;
}