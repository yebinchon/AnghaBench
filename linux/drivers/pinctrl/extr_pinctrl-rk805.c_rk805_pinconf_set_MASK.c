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
typedef  unsigned int u32 ;
struct rk805_pctrl_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 struct rk805_pctrl_info* FUNC3 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pinctrl_dev*,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
			     unsigned int pin, unsigned long *configs,
			     unsigned int num_configs)
{
	struct rk805_pctrl_info *pci = FUNC3(pctldev);
	enum pin_config_param param;
	u32 i, arg = 0;

	for (i = 0; i < num_configs; i++) {
		param = FUNC2(configs[i]);
		arg = FUNC1(configs[i]);

		switch (param) {
		case PIN_CONFIG_OUTPUT:
			FUNC4(&pci->gpio_chip, pin, arg);
			FUNC5(pctldev, NULL, pin, false);
			break;
		default:
			FUNC0(pci->dev, "Properties not supported\n");
			return -ENOTSUPP;
		}
	}

	return 0;
}