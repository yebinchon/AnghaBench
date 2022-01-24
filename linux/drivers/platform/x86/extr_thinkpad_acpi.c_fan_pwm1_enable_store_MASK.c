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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int ENXIO ; 
 int TPACPI_FAN_LAST_LEVEL ; 
 int TP_EC_FAN_AUTO ; 
 int TP_EC_FAN_FULLSPEED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	unsigned long t;
	int res, level;

	if (FUNC2(buf, 2, &t))
		return -EINVAL;

	FUNC3("hwmon pwm1_enable",
			"set fan mode to %lu\n", t);

	switch (t) {
	case 0:
		level = TP_EC_FAN_FULLSPEED;
		break;
	case 1:
		level = TPACPI_FAN_LAST_LEVEL;
		break;
	case 2:
		level = TP_EC_FAN_AUTO;
		break;
	case 3:
		/* reserved for software-controlled auto mode */
		return -ENOSYS;
	default:
		return -EINVAL;
	}

	res = FUNC0(level);
	if (res == -ENXIO)
		return -EINVAL;
	else if (res < 0)
		return res;

	FUNC1();

	return count;
}