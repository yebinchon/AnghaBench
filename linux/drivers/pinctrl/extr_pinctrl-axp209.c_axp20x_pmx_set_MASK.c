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
typedef  int /*<<< orphan*/  u8 ;
struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_GPIO_FUNCTIONS ; 
 int FUNC0 (unsigned int) ; 
 struct axp20x_pctl* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev, unsigned int offset,
			  u8 config)
{
	struct axp20x_pctl *pctl = FUNC1(pctldev);
	int reg;

	reg = FUNC0(offset);
	if (reg < 0)
		return reg;

	return FUNC2(pctl->regmap, reg, AXP20X_GPIO_FUNCTIONS,
				  config);
}