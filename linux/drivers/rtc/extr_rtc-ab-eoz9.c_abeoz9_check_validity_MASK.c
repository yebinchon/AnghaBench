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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct abeoz9_rtc_data {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABEOZ9_REG_CTRL_STATUS ; 
 int ABEOZ9_REG_CTRL_STATUS_PON ; 
 int ABEOZ9_REG_CTRL_STATUS_V1F ; 
 int ABEOZ9_REG_CTRL_STATUS_V2F ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct abeoz9_rtc_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct abeoz9_rtc_data *data = FUNC1(dev);
	struct regmap *regmap = data->regmap;
	int ret;
	int val;

	ret = FUNC3(regmap, ABEOZ9_REG_CTRL_STATUS, &val);
	if (ret < 0) {
		FUNC0(dev,
			"unable to get CTRL_STATUS register (%d)\n", ret);
		return ret;
	}

	if (val & ABEOZ9_REG_CTRL_STATUS_PON) {
		FUNC2(dev, "power-on reset detected, date is invalid\n");
		return -EINVAL;
	}

	if (val & ABEOZ9_REG_CTRL_STATUS_V1F) {
		FUNC2(dev,
			 "voltage drops below VLOW1 threshold, date is invalid\n");
		return -EINVAL;
	}

	if ((val & ABEOZ9_REG_CTRL_STATUS_V2F)) {
		FUNC2(dev,
			 "voltage drops below VLOW2 threshold, date is invalid\n");
		return -EINVAL;
	}

	return 0;
}