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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  HIGH_HYSTERESIS ; 
 int /*<<< orphan*/  HIGH_Z ; 
#define  PIN_CONFIG_BIAS_HIGH_IMPEDANCE 132 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_STRENGTH 129 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 128 
 int /*<<< orphan*/  PULL_DOWN ; 
 int /*<<< orphan*/  PULL_UP ; 
 int FUNC0 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* atlas7_ioc_pads ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				unsigned pin, unsigned long *configs,
				unsigned num_configs)
{
	u16 param;
	u32 arg;
	int idx, err;

	for (idx = 0; idx < num_configs; idx++) {
		param = FUNC3(configs[idx]);
		arg = FUNC2(configs[idx]);

		FUNC4("PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d >>>>>\n",
			pin, atlas7_ioc_pads[pin].name, param, arg);
		switch (param) {
		case PIN_CONFIG_BIAS_PULL_UP:
			err = FUNC1(pctldev,
							pin, PULL_UP);
			if (err)
				return err;
			break;

		case PIN_CONFIG_BIAS_PULL_DOWN:
			err = FUNC1(pctldev,
							pin, PULL_DOWN);
			if (err)
				return err;
			break;

		case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
			err = FUNC1(pctldev,
							pin, HIGH_HYSTERESIS);
			if (err)
				return err;
			break;
		case PIN_CONFIG_BIAS_HIGH_IMPEDANCE:
			err = FUNC1(pctldev,
							pin, HIGH_Z);
			if (err)
				return err;
			break;

		case PIN_CONFIG_DRIVE_STRENGTH:
			err = FUNC0(pctldev,
							pin, arg);
			if (err)
				return err;
			break;
		default:
			return -ENOTSUPP;
		}
		FUNC4("PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d <<<<\n",
			pin, atlas7_ioc_pads[pin].name, param, arg);
	}

	return 0;
}