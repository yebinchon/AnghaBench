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
struct asus_wmi {int /*<<< orphan*/  fan_pwm_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_FAN_CTRL_MANUAL ; 
 int FUNC0 (struct asus_wmi*,int,int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 struct asus_wmi* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count) {
	struct asus_wmi *asus = FUNC2(dev);
	int value;
	int state;
	int ret;

	ret = FUNC3(buf, 10, &value);
	if (ret)
		return ret;

	value = FUNC1(value, 0, 255);

	state = FUNC0(asus, 1, &value);
	if (state)
		FUNC4("Setting fan speed failed: %d\n", state);
	else
		asus->fan_pwm_mode = ASUS_FAN_CTRL_MANUAL;

	return count;
}