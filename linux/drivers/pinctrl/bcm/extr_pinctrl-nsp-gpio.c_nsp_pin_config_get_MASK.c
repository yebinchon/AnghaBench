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
typedef  int /*<<< orphan*/  u16 ;
struct pinctrl_dev {int dummy; } ;
struct nsp_gpio {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_DOWN 130 
#define  PIN_CONFIG_BIAS_PULL_UP 129 
#define  PIN_CONFIG_DRIVE_STRENGTH 128 
 int /*<<< orphan*/  FUNC0 (struct nsp_gpio*,unsigned int,int*,int*) ; 
 int FUNC1 (struct nsp_gpio*,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long) ; 
 struct nsp_gpio* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev, unsigned pin,
			      unsigned long *config)
{
	struct nsp_gpio *chip = FUNC5(pctldev);
	enum pin_config_param param = FUNC4(*config);
	unsigned int gpio;
	u16 arg = 0;
	bool pull_up, pull_down;
	int ret;

	gpio = FUNC2(pin);
	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		FUNC0(chip, gpio, &pull_up, &pull_down);
		if ((pull_up == false) && (pull_down == false))
			return 0;
		else
			return -EINVAL;

	case PIN_CONFIG_BIAS_PULL_UP:
		FUNC0(chip, gpio, &pull_up, &pull_down);
		if (pull_up)
			return 0;
		else
			return -EINVAL;

	case PIN_CONFIG_BIAS_PULL_DOWN:
		FUNC0(chip, gpio, &pull_up, &pull_down);
		if (pull_down)
			return 0;
		else
			return -EINVAL;

	case PIN_CONFIG_DRIVE_STRENGTH:
		ret = FUNC1(chip, gpio, &arg);
		if (ret)
			return ret;
		*config = FUNC3(param, arg);
		return 0;

	default:
		return -ENOTSUPP;
	}
}