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
struct zfcp_adapter {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct ccw_device* FUNC1 (struct device*) ; 
 struct zfcp_adapter* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					       struct device_attribute *attr,
					       const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC1(dev);
	struct zfcp_adapter *adapter = FUNC2(cdev);
	unsigned long val;
	int retval = 0;

	if (!adapter)
		return -ENODEV;

	if (FUNC0(buf, 0, &val) || val != 0) {
		retval = -EINVAL;
		goto out;
	}

	FUNC4(adapter, "syafai2");
out:
	FUNC3(adapter);
	return retval ? retval : (ssize_t) count;
}