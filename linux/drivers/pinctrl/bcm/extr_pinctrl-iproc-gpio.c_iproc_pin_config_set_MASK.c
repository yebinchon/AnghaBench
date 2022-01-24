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
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_dev {int dummy; } ;
struct iproc_gpio {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_DOWN 130 
#define  PIN_CONFIG_BIAS_PULL_UP 129 
#define  PIN_CONFIG_DRIVE_STRENGTH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct iproc_gpio*,unsigned int,int,int) ; 
 int FUNC2 (struct iproc_gpio*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (struct iproc_gpio*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 struct iproc_gpio* FUNC7 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev, unsigned pin,
				 unsigned long *configs, unsigned num_configs)
{
	struct iproc_gpio *chip = FUNC7(pctldev);
	enum pin_config_param param;
	u32 arg;
	unsigned i, gpio = FUNC3(pin);
	int ret = -ENOTSUPP;

	for (i = 0; i < num_configs; i++) {
		param = FUNC6(configs[i]);

		if (FUNC4(chip, param))
			return -ENOTSUPP;

		arg = FUNC5(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
			ret = FUNC1(chip, gpio, true, false);
			if (ret < 0)
				goto out;
			break;

		case PIN_CONFIG_BIAS_PULL_UP:
			ret = FUNC1(chip, gpio, false, true);
			if (ret < 0)
				goto out;
			break;

		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC1(chip, gpio, false, false);
			if (ret < 0)
				goto out;
			break;

		case PIN_CONFIG_DRIVE_STRENGTH:
			ret = FUNC2(chip, gpio, arg);
			if (ret < 0)
				goto out;
			break;

		default:
			FUNC0(chip->dev, "invalid configuration\n");
			return -ENOTSUPP;
		}
	} /* for each config */

out:
	return ret;
}