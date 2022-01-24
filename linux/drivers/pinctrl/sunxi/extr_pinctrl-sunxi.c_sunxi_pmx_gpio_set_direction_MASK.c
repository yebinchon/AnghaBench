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
struct sunxi_pinctrl {int dummy; } ;
struct sunxi_desc_function {int /*<<< orphan*/  muxval; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct sunxi_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 struct sunxi_desc_function* FUNC1 (struct sunxi_pinctrl*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct pinctrl_dev *pctldev,
			struct pinctrl_gpio_range *range,
			unsigned offset,
			bool input)
{
	struct sunxi_pinctrl *pctl = FUNC0(pctldev);
	struct sunxi_desc_function *desc;
	const char *func;

	if (input)
		func = "gpio_in";
	else
		func = "gpio_out";

	desc = FUNC1(pctl, offset, func);
	if (!desc)
		return -EINVAL;

	FUNC2(pctldev, offset, desc->muxval);

	return 0;
}