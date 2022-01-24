#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* host_access_count ) (struct dasd_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int FUNC4 (char*,char*,int) ; 
 int FUNC5 (struct dasd_device*) ; 
 struct ccw_device* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		 char *buf)
{
	struct ccw_device *cdev = FUNC6(dev);
	struct dasd_device *device;
	int count;

	device = FUNC2(cdev);
	if (FUNC0(device))
		return FUNC1(device);

	if (!device->discipline)
		count = -ENODEV;
	else if (!device->discipline->host_access_count)
		count = -EOPNOTSUPP;
	else
		count = device->discipline->host_access_count(device);

	FUNC3(device);
	if (count < 0)
		return count;

	return FUNC4(buf, "%d\n", count);
}