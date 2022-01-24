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
struct uio_device {int /*<<< orphan*/  info_lock; TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct uio_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			 struct device_attribute *attr, char *buf)
{
	struct uio_device *idev = FUNC1(dev);
	int ret;

	FUNC2(&idev->info_lock);
	if (!idev->info) {
		ret = -EINVAL;
		FUNC0(dev, "the device has been unregistered\n");
		goto out;
	}

	ret = FUNC4(buf, "%s\n", idev->info->name);

out:
	FUNC3(&idev->info_lock);
	return ret;
}