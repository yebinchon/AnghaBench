#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct lpc18xx_scu_data {int base; } ;
struct lpc18xx_pin_caps {scalar_t__ type; int analog; int offset; unsigned int* functions; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct lpc18xx_pin_caps* drv_data; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC_ADC ; 
 unsigned int FUNC_DAC ; 
 unsigned int FUNC_I2C0 ; 
 unsigned int FUNC_USB1 ; 
 scalar_t__ FUNC0 (int) ; 
 int LPC18XX_ANALOG_BIT_MASK ; 
 int LPC18XX_ANALOG_PIN ; 
 int LPC18XX_SCU_ANALOG_PIN_CFG ; 
 int LPC18XX_SCU_FUNC_PER_PIN ; 
 int LPC18XX_SCU_PIN_MODE_MASK ; 
 int LPC18XX_SCU_REG_ENAIO0 ; 
 int LPC18XX_SCU_REG_ENAIO1 ; 
 int LPC18XX_SCU_REG_ENAIO2 ; 
 int LPC18XX_SCU_REG_ENAIO2_DAC ; 
 scalar_t__ TYPE_I2C0 ; 
 scalar_t__ TYPE_USB1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lpc18xx_function_names ; 
 TYPE_1__* lpc18xx_pins ; 
 struct lpc18xx_scu_data* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev, unsigned function,
			   unsigned group)
{
	struct lpc18xx_scu_data *scu = FUNC2(pctldev);
	struct lpc18xx_pin_caps *pin = lpc18xx_pins[group].drv_data;
	int func;
	u32 reg;

	/* Dedicated USB1 and I2C0 pins doesn't support muxing */
	if (pin->type == TYPE_USB1) {
		if (function == FUNC_USB1)
			return 0;

		goto fail;
	}

	if (pin->type == TYPE_I2C0) {
		if (function == FUNC_I2C0)
			return 0;

		goto fail;
	}

	if (function == FUNC_ADC && (pin->analog & LPC18XX_ANALOG_PIN)) {
		u32 offset;

		FUNC4(LPC18XX_SCU_ANALOG_PIN_CFG, scu->base + pin->offset);

		if (FUNC0(pin->analog) == 0)
			offset = LPC18XX_SCU_REG_ENAIO0;
		else
			offset = LPC18XX_SCU_REG_ENAIO1;

		reg = FUNC3(scu->base + offset);
		reg |= pin->analog & LPC18XX_ANALOG_BIT_MASK;
		FUNC4(reg, scu->base + offset);

		return 0;
	}

	if (function == FUNC_DAC && (pin->analog & LPC18XX_ANALOG_PIN)) {
		FUNC4(LPC18XX_SCU_ANALOG_PIN_CFG, scu->base + pin->offset);

		reg = FUNC3(scu->base + LPC18XX_SCU_REG_ENAIO2);
		reg |= LPC18XX_SCU_REG_ENAIO2_DAC;
		FUNC4(reg, scu->base + LPC18XX_SCU_REG_ENAIO2);

		return 0;
	}

	for (func = 0; func < LPC18XX_SCU_FUNC_PER_PIN; func++) {
		if (function == pin->functions[func])
			break;
	}

	if (func >= LPC18XX_SCU_FUNC_PER_PIN)
		goto fail;

	reg = FUNC3(scu->base + pin->offset);
	reg &= ~LPC18XX_SCU_PIN_MODE_MASK;
	FUNC4(reg | func, scu->base + pin->offset);

	return 0;
fail:
	FUNC1(pctldev->dev, "Pin %s can't be %s\n", lpc18xx_pins[group].name,
						      lpc18xx_function_names[function]);
	return -EINVAL;
}