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
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {long cmb_start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmb_sample_count ; 
 unsigned long FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,long) ; 
 struct ccw_device* FUNC5 (struct device*) ; 
 long FUNC6 (long) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct ccw_device *cdev = FUNC5(dev);
	unsigned long count;
	long interval;

	count = FUNC0(cdev, cmb_sample_count);
	FUNC2(cdev->ccwlock);
	if (count) {
		interval = FUNC1() - cdev->private->cmb_start_time;
		interval = FUNC6(interval);
		interval /= count;
	} else
		interval = -1;
	FUNC3(cdev->ccwlock);
	return FUNC4(buf, "%ld\n", interval);
}