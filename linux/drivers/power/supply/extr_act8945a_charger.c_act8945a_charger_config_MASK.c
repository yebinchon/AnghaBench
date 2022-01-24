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
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct act8945a_charger {void* chglev_gpio; void* lbo_gpio; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT8945A_APCH_CFG ; 
 unsigned int APCH_CFG_OVPSET_6V6 ; 
 unsigned int APCH_CFG_OVPSET_7V ; 
 unsigned int APCH_CFG_OVPSET_7V5 ; 
 unsigned int APCH_CFG_OVPSET_8V ; 
 unsigned int APCH_CFG_PRETIMO_40_MIN ; 
 unsigned int APCH_CFG_PRETIMO_60_MIN ; 
 unsigned int APCH_CFG_PRETIMO_80_MIN ; 
 unsigned int APCH_CFG_PRETIMO_DISABLED ; 
 unsigned int APCH_CFG_SUSCHG ; 
 unsigned int APCH_CFG_TOTTIMO_3_HOUR ; 
 unsigned int APCH_CFG_TOTTIMO_4_HOUR ; 
 unsigned int APCH_CFG_TOTTIMO_5_HOUR ; 
 unsigned int APCH_CFG_TOTTIMO_DISABLED ; 
 int DEFAULT_INPUT_OVP_THRESHOLD ; 
 int DEFAULT_PRE_TIME_OUT ; 
 int DEFAULT_TOTAL_TIME_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  act8945a_status_changed ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct act8945a_charger*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 
 int FUNC8 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC9 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
				   struct act8945a_charger *charger)
{
	struct device_node *np = dev->of_node;
	struct regmap *regmap = charger->regmap;

	u32 total_time_out;
	u32 pre_time_out;
	u32 input_voltage_threshold;
	int err, ret;

	unsigned int tmp;
	unsigned int value = 0;

	if (!np) {
		FUNC2(dev, "no charger of node\n");
		return -EINVAL;
	}

	ret = FUNC8(regmap, ACT8945A_APCH_CFG, &tmp);
	if (ret)
		return ret;

	if (tmp & APCH_CFG_SUSCHG) {
		value |= APCH_CFG_SUSCHG;
		FUNC3(dev, "have been suspended\n");
	}

	charger->lbo_gpio = FUNC4(dev, "active-semi,lbo",
						    GPIOD_IN);
	if (FUNC0(charger->lbo_gpio)) {
		err = FUNC1(charger->lbo_gpio);
		FUNC2(dev, "unable to claim gpio \"lbo\": %d\n", err);
		return err;
	}

	ret = FUNC5(dev, FUNC6(charger->lbo_gpio),
			       act8945a_status_changed,
			       (IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING),
			       "act8945a_lbo_detect", charger);
	if (ret)
		FUNC3(dev, "failed to request gpio \"lbo\" IRQ\n");

	charger->chglev_gpio = FUNC4(dev,
						       "active-semi,chglev",
						       GPIOD_IN);
	if (FUNC0(charger->chglev_gpio)) {
		err = FUNC1(charger->chglev_gpio);
		FUNC2(dev, "unable to claim gpio \"chglev\": %d\n", err);
		return err;
	}

	if (FUNC7(np,
				 "active-semi,input-voltage-threshold-microvolt",
				 &input_voltage_threshold))
		input_voltage_threshold = DEFAULT_INPUT_OVP_THRESHOLD;

	if (FUNC7(np,
				 "active-semi,precondition-timeout",
				 &pre_time_out))
		pre_time_out = DEFAULT_PRE_TIME_OUT;

	if (FUNC7(np, "active-semi,total-timeout",
				 &total_time_out))
		total_time_out = DEFAULT_TOTAL_TIME_OUT;

	switch (input_voltage_threshold) {
	case 8000:
		value |= APCH_CFG_OVPSET_8V;
		break;
	case 7500:
		value |= APCH_CFG_OVPSET_7V5;
		break;
	case 7000:
		value |= APCH_CFG_OVPSET_7V;
		break;
	case 6600:
	default:
		value |= APCH_CFG_OVPSET_6V6;
		break;
	}

	switch (pre_time_out) {
	case 60:
		value |= APCH_CFG_PRETIMO_60_MIN;
		break;
	case 80:
		value |= APCH_CFG_PRETIMO_80_MIN;
		break;
	case 0:
		value |= APCH_CFG_PRETIMO_DISABLED;
		break;
	case 40:
	default:
		value |= APCH_CFG_PRETIMO_40_MIN;
		break;
	}

	switch (total_time_out) {
	case 4:
		value |= APCH_CFG_TOTTIMO_4_HOUR;
		break;
	case 5:
		value |= APCH_CFG_TOTTIMO_5_HOUR;
		break;
	case 0:
		value |= APCH_CFG_TOTTIMO_DISABLED;
		break;
	case 3:
	default:
		value |= APCH_CFG_TOTTIMO_3_HOUR;
		break;
	}

	return FUNC9(regmap, ACT8945A_APCH_CFG, value);
}