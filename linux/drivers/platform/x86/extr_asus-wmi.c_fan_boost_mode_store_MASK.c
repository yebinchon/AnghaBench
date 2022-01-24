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
typedef  scalar_t__ u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {scalar_t__ fan_boost_mode_mask; scalar_t__ fan_boost_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ASUS_FAN_BOOST_MODE_NORMAL ; 
 scalar_t__ ASUS_FAN_BOOST_MODE_OVERBOOST ; 
 scalar_t__ ASUS_FAN_BOOST_MODE_OVERBOOST_MASK ; 
 scalar_t__ ASUS_FAN_BOOST_MODE_SILENT ; 
 scalar_t__ ASUS_FAN_BOOST_MODE_SILENT_MASK ; 
 int EINVAL ; 
 struct asus_wmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*) ; 
 int FUNC2 (char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	int result;
	u8 new_mode;
	struct asus_wmi *asus = FUNC0(dev);
	u8 mask = asus->fan_boost_mode_mask;

	result = FUNC2(buf, 10, &new_mode);
	if (result < 0) {
		FUNC3("Trying to store invalid value\n");
		return result;
	}

	if (new_mode == ASUS_FAN_BOOST_MODE_OVERBOOST) {
		if (!(mask & ASUS_FAN_BOOST_MODE_OVERBOOST_MASK))
			return -EINVAL;
	} else if (new_mode == ASUS_FAN_BOOST_MODE_SILENT) {
		if (!(mask & ASUS_FAN_BOOST_MODE_SILENT_MASK))
			return -EINVAL;
	} else if (new_mode != ASUS_FAN_BOOST_MODE_NORMAL) {
		return -EINVAL;
	}

	asus->fan_boost_mode = new_mode;
	FUNC1(asus);

	return result;
}