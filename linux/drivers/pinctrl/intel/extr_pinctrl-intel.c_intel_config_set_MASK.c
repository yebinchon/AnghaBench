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
struct pinctrl_dev {int dummy; } ;
struct intel_pinctrl {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_DOWN 130 
#define  PIN_CONFIG_BIAS_PULL_UP 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 int FUNC0 (struct intel_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_pinctrl*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 struct intel_pinctrl* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev, unsigned int pin,
			  unsigned long *configs, unsigned int nconfigs)
{
	struct intel_pinctrl *pctrl = FUNC5(pctldev);
	int i, ret;

	if (!FUNC2(pctrl, pin))
		return -ENOTSUPP;

	for (i = 0; i < nconfigs; i++) {
		switch (FUNC4(configs[i])) {
		case PIN_CONFIG_BIAS_DISABLE:
		case PIN_CONFIG_BIAS_PULL_UP:
		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC1(pctrl, pin, configs[i]);
			if (ret)
				return ret;
			break;

		case PIN_CONFIG_INPUT_DEBOUNCE:
			ret = FUNC0(pctrl, pin,
				FUNC3(configs[i]));
			if (ret)
				return ret;
			break;

		default:
			return -ENOTSUPP;
		}
	}

	return 0;
}