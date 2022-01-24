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
struct request_queue {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {unsigned long blk_timeout; TYPE_1__* block; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {struct request_queue* request_queue; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 unsigned long UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,unsigned long) ; 
 struct dasd_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	struct dasd_device *device;
	struct request_queue *q;
	unsigned long val;

	device = FUNC2(FUNC5(dev));
	if (FUNC0(device) || !device->block)
		return -ENODEV;

	if ((FUNC4(buf, 10, &val) != 0) ||
	    val > UINT_MAX / HZ) {
		FUNC3(device);
		return -EINVAL;
	}
	q = device->block->request_queue;
	if (!q) {
		FUNC3(device);
		return -ENODEV;
	}

	device->blk_timeout = val;

	FUNC1(q, device->blk_timeout * HZ);

	FUNC3(device);
	return count;
}