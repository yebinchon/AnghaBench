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
struct pm8xxx_pin_data {int power_source; int mode; int open_drain; int output_value; int bias; int pull_up_strength; int output_strength; int disable; int function; int inverted; } ;
struct pm8xxx_gpio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PM8XXX_GPIO_BIAS_PU_1P5_30 ; 
 int PM8XXX_GPIO_BIAS_PU_30 ; 
 int FUNC1 (struct pm8xxx_gpio*,struct pm8xxx_pin_data*,int) ; 

__attribute__((used)) static int FUNC2(struct pm8xxx_gpio *pctrl,
			       struct pm8xxx_pin_data *pin)
{
	int val;

	val = FUNC1(pctrl, pin, 0);
	if (val < 0)
		return val;

	pin->power_source = (val >> 1) & 0x7;

	val = FUNC1(pctrl, pin, 1);
	if (val < 0)
		return val;

	pin->mode = (val >> 2) & 0x3;
	pin->open_drain = !!(val & FUNC0(1));
	pin->output_value = val & FUNC0(0);

	val = FUNC1(pctrl, pin, 2);
	if (val < 0)
		return val;

	pin->bias = (val >> 1) & 0x7;
	if (pin->bias <= PM8XXX_GPIO_BIAS_PU_1P5_30)
		pin->pull_up_strength = pin->bias;
	else
		pin->pull_up_strength = PM8XXX_GPIO_BIAS_PU_30;

	val = FUNC1(pctrl, pin, 3);
	if (val < 0)
		return val;

	pin->output_strength = (val >> 2) & 0x3;
	pin->disable = val & FUNC0(0);

	val = FUNC1(pctrl, pin, 4);
	if (val < 0)
		return val;

	pin->function = (val >> 1) & 0x7;

	val = FUNC1(pctrl, pin, 5);
	if (val < 0)
		return val;

	pin->inverted = !(val & FUNC0(3));

	return 0;
}