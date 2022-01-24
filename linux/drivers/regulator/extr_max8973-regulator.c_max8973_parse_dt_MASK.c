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
typedef  scalar_t__ u32 ;
struct max8973_regulator_platform_data {int enable_ext_control; scalar_t__ junction_temp_warning; int /*<<< orphan*/  control_flags; scalar_t__ dvs_def_state; int /*<<< orphan*/  dvs_gpio; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX77621_TJINT_WARNING_TEMP_120 ; 
 scalar_t__ MAX77621_TJINT_WARNING_TEMP_140 ; 
 int /*<<< orphan*/  MAX8973_CONTROL_BIAS_ENABLE ; 
 int /*<<< orphan*/  MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US ; 
 int /*<<< orphan*/  MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US ; 
 int /*<<< orphan*/  MAX8973_CONTROL_CLKADV_TRIP_DISABLED ; 
 int /*<<< orphan*/  MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE ; 
 int /*<<< orphan*/  MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE ; 
 int /*<<< orphan*/  MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE ; 
 int /*<<< orphan*/  MAX8973_CONTROL_REMOTE_SENSE_ENABLE ; 
 struct max8973_regulator_platform_data* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static struct max8973_regulator_platform_data *FUNC4(
		struct device *dev)
{
	struct max8973_regulator_platform_data *pdata;
	struct device_node *np = dev->of_node;
	int ret;
	u32 pval;
	bool etr_enable;
	bool etr_sensitivity_high;

	pdata = FUNC0(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	pdata->enable_ext_control = FUNC2(np,
						"maxim,externally-enable");
	pdata->dvs_gpio = FUNC1(np, "maxim,dvs-gpio", 0);

	ret = FUNC3(np, "maxim,dvs-default-state", &pval);
	if (!ret)
		pdata->dvs_def_state = pval;

	if (FUNC2(np, "maxim,enable-remote-sense"))
		pdata->control_flags  |= MAX8973_CONTROL_REMOTE_SENSE_ENABLE;

	if (FUNC2(np, "maxim,enable-falling-slew-rate"))
		pdata->control_flags  |=
				MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE;

	if (FUNC2(np, "maxim,enable-active-discharge"))
		pdata->control_flags  |=
				MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE;

	if (FUNC2(np, "maxim,enable-frequency-shift"))
		pdata->control_flags  |= MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE;

	if (FUNC2(np, "maxim,enable-bias-control"))
		pdata->control_flags  |= MAX8973_CONTROL_BIAS_ENABLE;

	etr_enable = FUNC2(np, "maxim,enable-etr");
	etr_sensitivity_high = FUNC2(np,
				"maxim,enable-high-etr-sensitivity");
	if (etr_sensitivity_high)
		etr_enable = true;

	if (etr_enable) {
		if (etr_sensitivity_high)
			pdata->control_flags |=
				MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US;
		else
			pdata->control_flags |=
				MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US;
	} else {
		pdata->control_flags |= MAX8973_CONTROL_CLKADV_TRIP_DISABLED;
	}

	pdata->junction_temp_warning = MAX77621_TJINT_WARNING_TEMP_140;
	ret = FUNC3(np, "junction-warn-millicelsius", &pval);
	if (!ret && (pval <= MAX77621_TJINT_WARNING_TEMP_120))
		pdata->junction_temp_warning = MAX77621_TJINT_WARNING_TEMP_120;

	return pdata;
}