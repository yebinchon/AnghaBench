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
struct mrfld_pinctrl {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 132 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  FUNC0 (struct mrfld_pinctrl*,unsigned int) ; 
 int FUNC1 (struct mrfld_pinctrl*,unsigned int,unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 struct mrfld_pinctrl* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned int pin,
			    unsigned long *configs, unsigned int nconfigs)
{
	struct mrfld_pinctrl *mp = FUNC3(pctldev);
	unsigned int i;
	int ret;

	if (!FUNC0(mp, pin))
		return -ENOTSUPP;

	for (i = 0; i < nconfigs; i++) {
		switch (FUNC2(configs[i])) {
		case PIN_CONFIG_BIAS_DISABLE:
		case PIN_CONFIG_BIAS_PULL_UP:
		case PIN_CONFIG_BIAS_PULL_DOWN:
		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		case PIN_CONFIG_SLEW_RATE:
			ret = FUNC1(mp, pin, configs[i]);
			if (ret)
				return ret;
			break;

		default:
			return -ENOTSUPP;
		}
	}

	return 0;
}