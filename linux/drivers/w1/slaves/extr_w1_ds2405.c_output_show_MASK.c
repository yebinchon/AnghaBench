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
struct w1_slave {struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  bus_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct w1_slave* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_master*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			   struct device_attribute *attr, char *buf)
{
	struct w1_slave *sl = FUNC0(device);
	struct w1_master *dev = sl->master;

	int ret;
	ssize_t f_retval;

	ret = FUNC1(&dev->bus_mutex);
	if (ret)
		return ret;

	ret = FUNC3(sl);
	if (ret < 0) {
		f_retval = ret;
		goto out_unlock;
	}

	*buf = ret ? '1' : '0';
	f_retval = 1;

out_unlock:
	FUNC4(dev);
	FUNC2(&dev->bus_mutex);

	return f_retval;
}