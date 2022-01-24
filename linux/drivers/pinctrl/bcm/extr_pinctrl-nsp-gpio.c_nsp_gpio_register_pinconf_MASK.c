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
struct pinctrl_pin_desc {int number; int /*<<< orphan*/  name; } ;
struct pinctrl_desc {int npins; int /*<<< orphan*/ * confops; struct pinctrl_pin_desc* pins; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  name; } ;
struct gpio_chip {int ngpio; } ;
struct nsp_gpio {int /*<<< orphan*/  pctl; int /*<<< orphan*/  dev; struct gpio_chip gc; struct pinctrl_desc pctldesc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct pinctrl_pin_desc* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pinctrl_desc*,struct nsp_gpio*) ; 
 int /*<<< orphan*/  nsp_pconf_ops ; 
 int /*<<< orphan*/  nsp_pctrl_ops ; 

__attribute__((used)) static int FUNC7(struct nsp_gpio *chip)
{
	struct pinctrl_desc *pctldesc = &chip->pctldesc;
	struct pinctrl_pin_desc *pins;
	struct gpio_chip *gc = &chip->gc;
	int i;

	pins = FUNC5(chip->dev, gc->ngpio, sizeof(*pins), GFP_KERNEL);
	if (!pins)
		return -ENOMEM;
	for (i = 0; i < gc->ngpio; i++) {
		pins[i].number = i;
		pins[i].name = FUNC4(chip->dev, GFP_KERNEL,
					      "gpio-%d", i);
		if (!pins[i].name)
			return -ENOMEM;
	}
	pctldesc->name = FUNC3(chip->dev);
	pctldesc->pctlops = &nsp_pctrl_ops;
	pctldesc->pins = pins;
	pctldesc->npins = gc->ngpio;
	pctldesc->confops = &nsp_pconf_ops;

	chip->pctl = FUNC6(chip->dev, pctldesc, chip);
	if (FUNC0(chip->pctl)) {
		FUNC2(chip->dev, "unable to register pinctrl device\n");
		return FUNC1(chip->pctl);
	}

	return 0;
}