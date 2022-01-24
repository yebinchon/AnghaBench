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
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int num_pins; int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned long*,unsigned int) ; 
 TYPE_1__* artpec6_pin_groups ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				   unsigned int group, unsigned long *configs,
				   unsigned int num_configs)
{
	unsigned int num_pins, current_pin;
	int ret;

	FUNC2(pctldev->dev, "setting group %s configuration\n",
		FUNC0(pctldev, group));

	num_pins = artpec6_pin_groups[group].num_pins;

	for (current_pin = 0; current_pin < num_pins; current_pin++) {
		ret = FUNC1(pctldev,
				artpec6_pin_groups[group].pins[current_pin],
				configs, num_configs);

		if (ret < 0)
			return ret;
	}

	return 0;
}