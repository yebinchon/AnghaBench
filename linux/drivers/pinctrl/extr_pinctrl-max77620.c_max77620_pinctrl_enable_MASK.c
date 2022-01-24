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
typedef  int u8 ;
struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  rmap; TYPE_1__* pin_groups; } ;
struct TYPE_2__ {unsigned int alt_option; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 unsigned int MAX77620_PINMUX_GPIO ; 
 int /*<<< orphan*/  MAX77620_REG_AME_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct max77620_pctrl_info* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
				   unsigned int function, unsigned int group)
{
	struct max77620_pctrl_info *mpci = FUNC2(pctldev);
	u8 val;
	int ret;

	if (function == MAX77620_PINMUX_GPIO) {
		val = 0;
	} else if (function == mpci->pin_groups[group].alt_option) {
		val = 1 << group;
	} else {
		FUNC1(mpci->dev, "GPIO %u doesn't have function %u\n",
			group, function);
		return -EINVAL;
	}
	ret = FUNC3(mpci->rmap, MAX77620_REG_AME_GPIO,
				 FUNC0(group), val);
	if (ret < 0)
		FUNC1(mpci->dev, "REG AME GPIO update failed: %d\n", ret);

	return ret;
}