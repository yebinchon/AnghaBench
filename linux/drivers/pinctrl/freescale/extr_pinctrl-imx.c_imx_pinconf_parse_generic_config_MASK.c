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
struct imx_pinctrl_soc_info {int /*<<< orphan*/  generic_pinconf; } ;
struct imx_pinctrl {struct pinctrl_dev* pctl; struct imx_pinctrl_soc_info* info; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx_pinctrl*,unsigned long*,unsigned int) ; 
 int FUNC1 (struct device_node*,struct pinctrl_dev*,unsigned long**,unsigned int*) ; 

__attribute__((used)) static u32 FUNC2(struct device_node *np,
					    struct imx_pinctrl *ipctl)
{
	const struct imx_pinctrl_soc_info *info = ipctl->info;
	struct pinctrl_dev *pctl = ipctl->pctl;
	unsigned int num_configs;
	unsigned long *configs;
	int ret;

	if (!info->generic_pinconf)
		return 0;

	ret = FUNC1(np, pctl, &configs,
					      &num_configs);
	if (ret)
		return 0;

	return FUNC0(ipctl, configs, num_configs);
}