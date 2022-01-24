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
struct imx_pinctrl_soc_info {int flags; } ;
struct imx_pinctrl {struct imx_pinctrl_soc_info* info; } ;

/* Variables and functions */
 int IMX_USE_SCU ; 
 int FUNC0 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 int FUNC1 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 struct imx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
			   unsigned pin_id, unsigned long *config)
{
	struct imx_pinctrl *ipctl = FUNC2(pctldev);
	const struct imx_pinctrl_soc_info *info = ipctl->info;

	if (info->flags & IMX_USE_SCU)
		return FUNC1(pctldev, pin_id, config);
	else
		return FUNC0(pctldev, pin_id, config);
}