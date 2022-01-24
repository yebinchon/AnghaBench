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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {scalar_t__ fan_type; int fan_pwm_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  ASUS_FAN_CTRL_AUTO 130 
#define  ASUS_FAN_CTRL_FULLSPEED 129 
#define  ASUS_FAN_CTRL_MANUAL 128 
 int /*<<< orphan*/  ASUS_WMI_DEVID_CPU_FAN_CTRL ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FAN_TYPE_AGFN ; 
 scalar_t__ FAN_TYPE_SPEC83 ; 
 int FUNC0 (struct asus_wmi*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 struct asus_wmi* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
						  struct device_attribute *attr,
						  const char *buf, size_t count)
{
	struct asus_wmi *asus = FUNC2(dev);
	int status = 0;
	int state;
	int value;
	int ret;
	u32 retval;

	ret = FUNC3(buf, 10, &state);
	if (ret)
		return ret;

	if (asus->fan_type == FAN_TYPE_SPEC83) {
		switch (state) { /* standard documented hwmon values */
		case ASUS_FAN_CTRL_FULLSPEED:
			value = 1;
			break;
		case ASUS_FAN_CTRL_AUTO:
			value = 0;
			break;
		default:
			return -EINVAL;
		}

		ret = FUNC1(ASUS_WMI_DEVID_CPU_FAN_CTRL,
					    value, &retval);
		if (ret)
			return ret;

		if (retval != 1)
			return -EIO;
	} else if (asus->fan_type == FAN_TYPE_AGFN) {
		switch (state) {
		case ASUS_FAN_CTRL_MANUAL:
			break;

		case ASUS_FAN_CTRL_AUTO:
			status = FUNC0(asus);
			if (status)
				return status;
			break;

		default:
			return -EINVAL;
		}
	}

	asus->fan_pwm_mode = state;
	return count;
}