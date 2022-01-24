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
struct lochnagar_pin_priv {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_INPUT_ENABLE 129 
#define  PIN_CONFIG_OUTPUT_ENABLE 128 
 int FUNC0 (struct lochnagar_pin_priv*,unsigned int,int) ; 
 unsigned int FUNC1 (unsigned long) ; 
 struct lochnagar_pin_priv* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				    unsigned int group_idx,
				    unsigned long *configs,
				    unsigned int num_configs)
{
	struct lochnagar_pin_priv *priv = FUNC2(pctldev);
	int i, ret;

	for (i = 0; i < num_configs; i++) {
		unsigned int param = FUNC1(*configs);

		switch (param) {
		case PIN_CONFIG_OUTPUT_ENABLE:
			ret = FUNC0(priv, group_idx, true);
			if (ret)
				return ret;
			break;
		case PIN_CONFIG_INPUT_ENABLE:
			ret = FUNC0(priv, group_idx, false);
			if (ret)
				return ret;
			break;
		default:
			return -ENOTSUPP;
		}

		configs++;
	}

	return 0;
}