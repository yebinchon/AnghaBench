#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rockchip_pinctrl {TYPE_2__* groups; TYPE_1__* functions; int /*<<< orphan*/  dev; } ;
struct rockchip_pin_config {int /*<<< orphan*/  func; } ;
struct rockchip_pin_bank {scalar_t__ pin_base; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {unsigned int* pins; int npins; int /*<<< orphan*/  name; struct rockchip_pin_config* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rockchip_pin_bank* FUNC1 (struct rockchip_pinctrl*,unsigned int const) ; 
 struct rockchip_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (struct rockchip_pin_bank*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned selector,
			    unsigned group)
{
	struct rockchip_pinctrl *info = FUNC2(pctldev);
	const unsigned int *pins = info->groups[group].pins;
	const struct rockchip_pin_config *data = info->groups[group].data;
	struct rockchip_pin_bank *bank;
	int cnt, ret = 0;

	FUNC0(info->dev, "enable function %s group %s\n",
		info->functions[selector].name, info->groups[group].name);

	/*
	 * for each pin in the pin group selected, program the corresponding
	 * pin function number in the config register.
	 */
	for (cnt = 0; cnt < info->groups[group].npins; cnt++) {
		bank = FUNC1(info, pins[cnt]);
		ret = FUNC3(bank, pins[cnt] - bank->pin_base,
				       data[cnt].func);
		if (ret)
			break;
	}

	if (ret) {
		/* revert the already done pin settings */
		for (cnt--; cnt >= 0; cnt--)
			FUNC3(bank, pins[cnt] - bank->pin_base, 0);

		return ret;
	}

	return 0;
}