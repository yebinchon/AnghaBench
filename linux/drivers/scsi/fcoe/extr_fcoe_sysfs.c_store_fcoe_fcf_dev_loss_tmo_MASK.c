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
struct fcoe_fcf_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct fcoe_fcf_device* FUNC0 (struct device*) ; 
 int FUNC1 (struct fcoe_fcf_device*,unsigned long) ; 
 int FUNC2 (char const*,unsigned long*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct fcoe_fcf_device *fcf = FUNC0(dev);
	unsigned long val;
	int rc;

	rc = FUNC2(buf, &val);
	if (rc)
		return rc;

	rc = FUNC1(fcf, val);
	if (rc)
		return rc;
	return count;
}