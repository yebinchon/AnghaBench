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
typedef  int /*<<< orphan*/  u16 ;
struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {int /*<<< orphan*/  rmap; TYPE_1__* pin_info; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int /*<<< orphan*/  drv_type; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  MAX77620_PIN_OD_DRV ; 
 int /*<<< orphan*/  MAX77620_PIN_PP_DRV ; 
 int /*<<< orphan*/  MAX77620_REG_PDE_GPIO ; 
 int /*<<< orphan*/  MAX77620_REG_PUE_GPIO ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 unsigned long FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long) ; 
 struct max77620_pctrl_info* FUNC4 (struct pinctrl_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
				unsigned int pin, unsigned long *config)
{
	struct max77620_pctrl_info *mpci = FUNC4(pctldev);
	struct device *dev = mpci->dev;
	enum pin_config_param param = FUNC3(*config);
	unsigned int val;
	int arg = 0;
	int ret;

	switch (param) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		if (mpci->pin_info[pin].drv_type == MAX77620_PIN_OD_DRV)
			arg = 1;
		break;

	case PIN_CONFIG_DRIVE_PUSH_PULL:
		if (mpci->pin_info[pin].drv_type == MAX77620_PIN_PP_DRV)
			arg = 1;
		break;

	case PIN_CONFIG_BIAS_PULL_UP:
		ret = FUNC5(mpci->rmap, MAX77620_REG_PUE_GPIO, &val);
		if (ret < 0) {
			FUNC1(dev, "Reg PUE_GPIO read failed: %d\n", ret);
			return ret;
		}
		if (val & FUNC0(pin))
			arg = 1;
		break;

	case PIN_CONFIG_BIAS_PULL_DOWN:
		ret = FUNC5(mpci->rmap, MAX77620_REG_PDE_GPIO, &val);
		if (ret < 0) {
			FUNC1(dev, "Reg PDE_GPIO read failed: %d\n", ret);
			return ret;
		}
		if (val & FUNC0(pin))
			arg = 1;
		break;

	default:
		FUNC1(dev, "Properties not supported\n");
		return -ENOTSUPP;
	}

	*config = FUNC2(param, (u16)arg);

	return 0;
}