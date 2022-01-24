#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_pin_desc {int number; int /*<<< orphan*/  name; } ;
struct at91_pinctrl {int nactive_banks; int /*<<< orphan*/  pctl; } ;
struct TYPE_5__ {int npins; struct pinctrl_pin_desc* pins; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  range; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_NB_GPIO_PER_BANK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ at91_pinctrl_desc ; 
 int FUNC2 (struct platform_device*,struct at91_pinctrl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct pinctrl_pin_desc* FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct at91_pinctrl*) ; 
 struct at91_pinctrl* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,struct at91_pinctrl*) ; 
 int gpio_banks ; 
 TYPE_1__** gpio_chips ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct at91_pinctrl*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct at91_pinctrl *info;
	struct pinctrl_pin_desc *pdesc;
	int ret, i, j, k, ngpio_chips_enabled = 0;

	info = FUNC9(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	ret = FUNC2(pdev, info);
	if (ret)
		return ret;

	/*
	 * We need all the GPIO drivers to probe FIRST, or we will not be able
	 * to obtain references to the struct gpio_chip * for them, and we
	 * need this to proceed.
	 */
	for (i = 0; i < gpio_banks; i++)
		if (gpio_chips[i])
			ngpio_chips_enabled++;

	if (ngpio_chips_enabled < info->nactive_banks) {
		FUNC6(&pdev->dev,
			 "All GPIO chips are not registered yet (%d/%d)\n",
			 ngpio_chips_enabled, info->nactive_banks);
		FUNC8(&pdev->dev, info);
		return -EPROBE_DEFER;
	}

	at91_pinctrl_desc.name = FUNC5(&pdev->dev);
	at91_pinctrl_desc.npins = gpio_banks * MAX_NB_GPIO_PER_BANK;
	at91_pinctrl_desc.pins = pdesc =
		FUNC7(&pdev->dev,
			     at91_pinctrl_desc.npins, sizeof(*pdesc),
			     GFP_KERNEL);

	if (!at91_pinctrl_desc.pins)
		return -ENOMEM;

	for (i = 0, k = 0; i < gpio_banks; i++) {
		for (j = 0; j < MAX_NB_GPIO_PER_BANK; j++, k++) {
			pdesc->number = k;
			pdesc->name = FUNC11(GFP_KERNEL, "pio%c%d", i + 'A', j);
			pdesc++;
		}
	}

	FUNC13(pdev, info);
	info->pctl = FUNC10(&pdev->dev, &at91_pinctrl_desc,
					   info);

	if (FUNC0(info->pctl)) {
		FUNC3(&pdev->dev, "could not register AT91 pinctrl driver\n");
		return FUNC1(info->pctl);
	}

	/* We will handle a range of GPIO pins */
	for (i = 0; i < gpio_banks; i++)
		if (gpio_chips[i])
			FUNC12(info->pctl, &gpio_chips[i]->range);

	FUNC4(&pdev->dev, "initialized AT91 pinctrl driver\n");

	return 0;
}