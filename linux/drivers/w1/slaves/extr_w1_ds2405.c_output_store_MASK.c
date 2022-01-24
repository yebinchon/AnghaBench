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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct w1_slave {int /*<<< orphan*/  reg_num; struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  bus_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dev_addr ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  W1_MATCH_ROM ; 
 struct w1_slave* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*,unsigned int*,int*) ; 
 int FUNC6 (struct w1_slave*) ; 
 scalar_t__ FUNC7 (struct w1_master*) ; 
 int /*<<< orphan*/  FUNC8 (struct w1_master*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *device,
			    struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct w1_slave *sl = FUNC0(device);
	struct w1_master *dev = sl->master;

	int ret, current_pio;
	unsigned int val;
	ssize_t f_retval;

	if (count < 1)
		return -EINVAL;

	if (FUNC5(buf, " %u%n", &val, &ret) < 1)
		return -EINVAL;

	if (val != 0 && val != 1)
		return -EINVAL;

	f_retval = ret;

	ret = FUNC3(&dev->bus_mutex);
	if (ret)
		return ret;

	current_pio = FUNC6(sl);
	if (current_pio < 0) {
		f_retval = current_pio;
		goto out_unlock;
	}

	if (current_pio == val)
		goto out_unlock;

	if (FUNC7(dev) != 0) {
		f_retval = -ENODEV;
		goto out_unlock;
	}

	/*
	 * can't use w1_reset_select_slave() here since it uses Skip ROM if
	 * there is only one device on bus
	 */
	do {
		u64 dev_addr = FUNC1(*(u64 *)&sl->reg_num);
		u8 cmd[9];

		cmd[0] = W1_MATCH_ROM;
		FUNC2(&cmd[1], &dev_addr, sizeof(dev_addr));

		FUNC8(dev, cmd, sizeof(cmd));
	} while (0);

out_unlock:
	FUNC7(dev);
	FUNC4(&dev->bus_mutex);

	return f_retval;
}