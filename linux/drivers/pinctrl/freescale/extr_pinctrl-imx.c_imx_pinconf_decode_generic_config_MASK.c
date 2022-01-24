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
struct imx_pinctrl_soc_info {unsigned int num_decodes; int /*<<< orphan*/  (* fixup ) (unsigned long*,unsigned int,int*) ;struct imx_cfg_params_decode* decodes; } ;
struct imx_pinctrl {struct imx_pinctrl_soc_info* info; } ;
struct imx_cfg_params_decode {int param; int shift; int mask; scalar_t__ invert; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,unsigned int,int*) ; 

__attribute__((used)) static u32 FUNC4(struct imx_pinctrl *ipctl,
					      unsigned long *configs,
					      unsigned int num_configs)
{
	const struct imx_pinctrl_soc_info *info = ipctl->info;
	const struct imx_cfg_params_decode *decode;
	enum pin_config_param param;
	u32 raw_config = 0;
	u32 param_val;
	int i, j;

	FUNC0(num_configs > info->num_decodes);

	for (i = 0; i < num_configs; i++) {
		param = FUNC2(configs[i]);
		param_val = FUNC1(configs[i]);
		decode = info->decodes;
		for (j = 0; j < info->num_decodes; j++) {
			if (param == decode->param) {
				if (decode->invert)
					param_val = !param_val;
				raw_config |= (param_val << decode->shift)
					      & decode->mask;
				break;
			}
			decode++;
		}
	}

	if (info->fixup)
		info->fixup(configs, num_configs, &raw_config);

	return raw_config;
}