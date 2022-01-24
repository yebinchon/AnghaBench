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
typedef  int /*<<< orphan*/  u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int DS2438_PAGE_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct w1_slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *filp, struct kobject *kobj,
			  struct bin_attribute *bin_attr, char *buf,
			  loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);
	int ret;
	u8 w1_buf[DS2438_PAGE_SIZE + 1 /*for CRC*/];

	if (off != 0)
		return 0;
	if (!buf)
		return -EINVAL;

	FUNC2(&sl->master->bus_mutex);

	/* Read no more than page0 size */
	if (count > DS2438_PAGE_SIZE)
		count = DS2438_PAGE_SIZE;

	if (FUNC4(sl, 0, w1_buf) == 0) {
		FUNC1(buf, &w1_buf, count);
		ret = count;
	} else
		ret = -EIO;

	FUNC3(&sl->master->bus_mutex);

	return ret;
}