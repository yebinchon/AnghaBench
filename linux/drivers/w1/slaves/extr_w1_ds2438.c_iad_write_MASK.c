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
struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2438_STATUS_IAD ; 
 int EFAULT ; 
 int EIO ; 
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct w1_slave*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static ssize_t FUNC4(struct file *filp, struct kobject *kobj,
			 struct bin_attribute *bin_attr, char *buf,
			 loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);
	int ret;

	if (count != 1 || off != 0)
		return -EFAULT;

	FUNC1(&sl->master->bus_mutex);

	if (FUNC3(sl, DS2438_STATUS_IAD, *buf & 0x01) == 0)
		ret = 1;
	else
		ret = -EIO;

	FUNC2(&sl->master->bus_mutex);

	return ret;
}