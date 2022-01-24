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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct abeoz9_rtc_data {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABEOZ9_REG_CTRL1 ; 
 int ABEOZ9_REG_CTRL1_EERE ; 
 int /*<<< orphan*/  ABEOZ9_REG_CTRL1_MASK ; 
 int ABEOZ9_REG_CTRL1_SRON ; 
 int ABEOZ9_REG_CTRL1_WE ; 
 int /*<<< orphan*/  ABEOZ9_REG_CTRL_INT ; 
 int /*<<< orphan*/  ABEOZ9_REG_CTRL_INT_FLAG ; 
 int /*<<< orphan*/  ABEOZ9_REG_EEPROM ; 
 int /*<<< orphan*/  ABEOZ9_REG_EEPROM_MASK ; 
 int ABEOZ9_REG_EEPROM_THE ; 
 int FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct abeoz9_rtc_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_node *node)
{
	struct abeoz9_rtc_data *data = FUNC2(dev);
	struct regmap *regmap = data->regmap;
	int ret;

	/* Enable Self Recovery, Clock for Watch and EEPROM refresh functions */
	ret = FUNC3(regmap, ABEOZ9_REG_CTRL1,
				 ABEOZ9_REG_CTRL1_MASK,
				 ABEOZ9_REG_CTRL1_WE |
				 ABEOZ9_REG_CTRL1_EERE |
				 ABEOZ9_REG_CTRL1_SRON);
	if (ret < 0) {
		FUNC1(dev, "unable to set CTRL_1 register (%d)\n", ret);
		return ret;
	}

	ret = FUNC4(regmap, ABEOZ9_REG_CTRL_INT, 0);
	if (ret < 0) {
		FUNC1(dev,
			"unable to set control CTRL_INT register (%d)\n",
			ret);
		return ret;
	}

	ret = FUNC4(regmap, ABEOZ9_REG_CTRL_INT_FLAG, 0);
	if (ret < 0) {
		FUNC1(dev,
			"unable to set control CTRL_INT_FLAG register (%d)\n",
			ret);
		return ret;
	}

	ret = FUNC0(node);

	/* Enable built-in termometer */
	ret |= ABEOZ9_REG_EEPROM_THE;

	ret = FUNC3(regmap, ABEOZ9_REG_EEPROM,
				 ABEOZ9_REG_EEPROM_MASK,
				 ret);
	if (ret < 0) {
		FUNC1(dev, "unable to set EEPROM register (%d)\n", ret);
		return ret;
	}

	return ret;
}