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
typedef  unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct amd_gpio {TYPE_1__* pdev; int /*<<< orphan*/  lock; scalar_t__ base; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int DB_TMR_OUT_MASK ; 
 unsigned int DRV_STRENGTH_SEL_MASK ; 
 unsigned int DRV_STRENGTH_SEL_OFF ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_STRENGTH 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 unsigned int PULL_DOWN_ENABLE_OFF ; 
 unsigned int PULL_UP_SEL_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long FUNC2 (int,unsigned int) ; 
 int FUNC3 (unsigned long) ; 
 struct amd_gpio* FUNC4 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
			  unsigned int pin,
			  unsigned long *config)
{
	u32 pin_reg;
	unsigned arg;
	unsigned long flags;
	struct amd_gpio *gpio_dev = FUNC4(pctldev);
	enum pin_config_param param = FUNC3(*config);

	FUNC5(&gpio_dev->lock, flags);
	pin_reg = FUNC7(gpio_dev->base + pin*4);
	FUNC6(&gpio_dev->lock, flags);
	switch (param) {
	case PIN_CONFIG_INPUT_DEBOUNCE:
		arg = pin_reg & DB_TMR_OUT_MASK;
		break;

	case PIN_CONFIG_BIAS_PULL_DOWN:
		arg = (pin_reg >> PULL_DOWN_ENABLE_OFF) & FUNC0(0);
		break;

	case PIN_CONFIG_BIAS_PULL_UP:
		arg = (pin_reg >> PULL_UP_SEL_OFF) & (FUNC0(0) | FUNC0(1));
		break;

	case PIN_CONFIG_DRIVE_STRENGTH:
		arg = (pin_reg >> DRV_STRENGTH_SEL_OFF) & DRV_STRENGTH_SEL_MASK;
		break;

	default:
		FUNC1(&gpio_dev->pdev->dev, "Invalid config param %04x\n",
			param);
		return -ENOTSUPP;
	}

	*config = FUNC2(param, arg);

	return 0;
}