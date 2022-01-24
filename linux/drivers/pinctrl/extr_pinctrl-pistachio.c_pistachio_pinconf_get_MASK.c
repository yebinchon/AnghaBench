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
struct pistachio_pinctrl {int /*<<< orphan*/  dev; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PADS_DRIVE_STRENGTH_12MA 138 
#define  PADS_DRIVE_STRENGTH_2MA 137 
#define  PADS_DRIVE_STRENGTH_4MA 136 
#define  PADS_DRIVE_STRENGTH_8MA 135 
 int PADS_DRIVE_STRENGTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int PADS_PU_PD_BUS ; 
 int PADS_PU_PD_DOWN ; 
 int PADS_PU_PD_HIGHZ ; 
 int PADS_PU_PD_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int PADS_PU_PD_UP ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
#define  PIN_CONFIG_BIAS_BUS_HOLD 134 
#define  PIN_CONFIG_BIAS_HIGH_IMPEDANCE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH 130 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (struct pistachio_pinctrl*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int,int) ; 
 int FUNC11 (unsigned long) ; 
 struct pistachio_pinctrl* FUNC12 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC13(struct pinctrl_dev *pctldev, unsigned pin,
				 unsigned long *config)
{
	struct pistachio_pinctrl *pctl = FUNC12(pctldev);
	enum pin_config_param param = FUNC11(*config);
	u32 val, arg;

	switch (param) {
	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
		val = FUNC9(pctl, FUNC5(pin));
		arg = !!(val & FUNC4(pin));
		break;
	case PIN_CONFIG_BIAS_HIGH_IMPEDANCE:
		val = FUNC9(pctl, FUNC2(pin)) >>
			FUNC3(pin);
		arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_HIGHZ;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		val = FUNC9(pctl, FUNC2(pin)) >>
			FUNC3(pin);
		arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_UP;
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		val = FUNC9(pctl, FUNC2(pin)) >>
			FUNC3(pin);
		arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_DOWN;
		break;
	case PIN_CONFIG_BIAS_BUS_HOLD:
		val = FUNC9(pctl, FUNC2(pin)) >>
			FUNC3(pin);
		arg = (val & PADS_PU_PD_MASK) == PADS_PU_PD_BUS;
		break;
	case PIN_CONFIG_SLEW_RATE:
		val = FUNC9(pctl, FUNC7(pin));
		arg = !!(val & FUNC6(pin));
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		val = FUNC9(pctl, FUNC0(pin)) >>
			FUNC1(pin);
		switch (val & PADS_DRIVE_STRENGTH_MASK) {
		case PADS_DRIVE_STRENGTH_2MA:
			arg = 2;
			break;
		case PADS_DRIVE_STRENGTH_4MA:
			arg = 4;
			break;
		case PADS_DRIVE_STRENGTH_8MA:
			arg = 8;
			break;
		case PADS_DRIVE_STRENGTH_12MA:
		default:
			arg = 12;
			break;
		}
		break;
	default:
		FUNC8(pctl->dev, "Property %u not supported\n", param);
		return -ENOTSUPP;
	}

	*config = FUNC10(param, arg);

	return 0;
}