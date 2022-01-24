#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct nmk_pinctrl {struct nmk_gpio_chip* pctl; TYPE_1__* dev; TYPE_2__* soc; int /*<<< orphan*/  prcm_base; } ;
struct nmk_gpio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;
struct TYPE_12__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nmk_gpio_chip*) ; 
 int NMK_MAX_BANKS ; 
 unsigned int PINCTRL_NMK_DB8500 ; 
 unsigned int PINCTRL_NMK_DB8540 ; 
 unsigned int PINCTRL_NMK_STN8815 ; 
 int FUNC1 (struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct nmk_pinctrl* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC5 (TYPE_1__*,TYPE_3__*,struct nmk_pinctrl*) ; 
 struct nmk_gpio_chip* FUNC6 (struct device_node*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 TYPE_3__ nmk_pinctrl_desc ; 
 int /*<<< orphan*/  nmk_pinctrl_match ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct device_node* FUNC13 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct nmk_pinctrl*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *prcm_np;
	struct nmk_pinctrl *npct;
	unsigned int version = 0;
	int i;

	npct = FUNC4(&pdev->dev, sizeof(*npct), GFP_KERNEL);
	if (!npct)
		return -ENOMEM;

	match = FUNC11(nmk_pinctrl_match, &pdev->dev);
	if (!match)
		return -ENODEV;
	version = (unsigned int) match->data;

	/* Poke in other ASIC variants here */
	if (version == PINCTRL_NMK_STN8815)
		FUNC9(&npct->soc);
	if (version == PINCTRL_NMK_DB8500)
		FUNC7(&npct->soc);
	if (version == PINCTRL_NMK_DB8540)
		FUNC8(&npct->soc);

	/*
	 * Since we depend on the GPIO chips to provide clock and register base
	 * for the pin control operations, make sure that we have these
	 * populated before we continue. Follow the phandles to instantiate
	 * them. The GPIO portion of the actual hardware may be probed before
	 * or after this point: it shouldn't matter as the APIs are orthogonal.
	 */
	for (i = 0; i < NMK_MAX_BANKS; i++) {
		struct device_node *gpio_np;
		struct nmk_gpio_chip *nmk_chip;

		gpio_np = FUNC13(np, "nomadik-gpio-chips", i);
		if (gpio_np) {
			FUNC3(&pdev->dev,
				 "populate NMK GPIO %d \"%pOFn\"\n",
				 i, gpio_np);
			nmk_chip = FUNC6(gpio_np, pdev);
			if (FUNC0(nmk_chip))
				FUNC2(&pdev->dev,
					"could not populate nmk chip struct "
					"- continue anyway\n");
			FUNC12(gpio_np);
		}
	}

	prcm_np = FUNC13(np, "prcm", 0);
	if (prcm_np)
		npct->prcm_base = FUNC10(prcm_np, 0);
	if (!npct->prcm_base) {
		if (version == PINCTRL_NMK_STN8815) {
			FUNC3(&pdev->dev,
				 "No PRCM base, "
				 "assuming no ALT-Cx control is available\n");
		} else {
			FUNC2(&pdev->dev, "missing PRCM base address\n");
			return -EINVAL;
		}
	}

	nmk_pinctrl_desc.pins = npct->soc->pins;
	nmk_pinctrl_desc.npins = npct->soc->npins;
	npct->dev = &pdev->dev;

	npct->pctl = FUNC5(&pdev->dev, &nmk_pinctrl_desc, npct);
	if (FUNC0(npct->pctl)) {
		FUNC2(&pdev->dev, "could not register Nomadik pinctrl driver\n");
		return FUNC1(npct->pctl);
	}

	FUNC14(pdev, npct);
	FUNC3(&pdev->dev, "initialized Nomadik pin control driver\n");

	return 0;
}