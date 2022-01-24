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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  OCELOT_GPIO_OE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ocelot_pinctrl*,unsigned int) ; 
 struct ocelot_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
				     struct pinctrl_gpio_range *range,
				     unsigned int pin, bool input)
{
	struct ocelot_pinctrl *info = FUNC2(pctldev);
	unsigned int p = pin % 32;

	FUNC3(info->map, FUNC1(OCELOT_GPIO_OE, info, pin), FUNC0(p),
			   input ? 0 : FUNC0(p));

	return 0;
}