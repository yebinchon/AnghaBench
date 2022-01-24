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
typedef  int u8 ;
struct w1_slave {struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  bus_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct w1_slave* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_slave*,int) ; 
 int FUNC5 (struct w1_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct w1_master*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *device,
			  struct device_attribute *attr, char *buf)
{
	struct w1_slave *sl = FUNC1(device);
	struct w1_master *dev = sl->master;

	int ret;
	ssize_t f_retval;
	u8 state;

	ret = FUNC2(&dev->bus_mutex);
	if (ret)
		return ret;

	if (!FUNC4(sl, false)) {
		f_retval = -ENODEV;
		goto out_unlock;
	}

	state = FUNC5(dev);
	if (state != 0 &&
	    state != 0xff) {
		FUNC0(device, "non-consistent state %x\n", state);
		f_retval = -EIO;
		goto out_unlock;
	}

	*buf = state ? '1' : '0';
	f_retval = 1;

out_unlock:
	FUNC6(dev);
	FUNC3(&dev->bus_mutex);

	return f_retval;
}