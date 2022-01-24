#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct pm8xxx_pin_data {int irq; int /*<<< orphan*/  reg; } ;
struct TYPE_16__ {int base; int of_gpio_n_cells; uintptr_t ngpio; int /*<<< orphan*/  label; int /*<<< orphan*/  of_node; TYPE_7__* parent; } ;
struct TYPE_15__ {uintptr_t npins; int /*<<< orphan*/  custom_conf_items; int /*<<< orphan*/  custom_params; int /*<<< orphan*/  num_custom_params; struct pinctrl_pin_desc* pins; } ;
struct pm8xxx_gpio {uintptr_t npins; int /*<<< orphan*/  domain; TYPE_2__ chip; TYPE_7__* dev; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  pctrl; TYPE_1__ desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct pinctrl_pin_desc {int number; struct pm8xxx_pin_data* drv_data; int /*<<< orphan*/  name; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 void* FUNC9 (TYPE_7__*,uintptr_t,int,int /*<<< orphan*/ ) ; 
 struct pm8xxx_gpio* FUNC10 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,TYPE_1__*,struct pm8xxx_gpio*) ; 
 int FUNC12 (TYPE_2__*,struct pm8xxx_gpio*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct irq_domain*,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC17 (struct device_node*) ; 
 struct device_node* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct pm8xxx_gpio*) ; 
 int /*<<< orphan*/  pm8xxx_conf_items ; 
 int /*<<< orphan*/  pm8xxx_domain_ops ; 
 int /*<<< orphan*/  pm8xxx_gpio_bindings ; 
 TYPE_2__ pm8xxx_gpio_template ; 
 int /*<<< orphan*/ * pm8xxx_groups ; 
 int FUNC23 (struct pm8xxx_gpio*,struct pm8xxx_pin_data*) ; 
 TYPE_1__ pm8xxx_pinctrl_desc ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct pm8xxx_pin_data *pin_data;
	struct irq_domain *parent_domain;
	struct device_node *parent_node;
	struct pinctrl_pin_desc *pins;
	struct pm8xxx_gpio *pctrl;
	int ret, i;

	pctrl = FUNC10(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	pctrl->dev = &pdev->dev;
	pctrl->npins = (uintptr_t) FUNC8(&pdev->dev);

	pctrl->regmap = FUNC6(pdev->dev.parent, NULL);
	if (!pctrl->regmap) {
		FUNC5(&pdev->dev, "parent regmap unavailable\n");
		return -ENXIO;
	}

	pctrl->desc = pm8xxx_pinctrl_desc;
	pctrl->desc.npins = pctrl->npins;

	pins = FUNC9(&pdev->dev,
			    pctrl->desc.npins,
			    sizeof(struct pinctrl_pin_desc),
			    GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	pin_data = FUNC9(&pdev->dev,
				pctrl->desc.npins,
				sizeof(struct pm8xxx_pin_data),
				GFP_KERNEL);
	if (!pin_data)
		return -ENOMEM;

	for (i = 0; i < pctrl->desc.npins; i++) {
		pin_data[i].reg = FUNC3(i);
		pin_data[i].irq = -1;

		ret = FUNC23(pctrl, &pin_data[i]);
		if (ret)
			return ret;

		pins[i].number = i;
		pins[i].name = pm8xxx_groups[i];
		pins[i].drv_data = &pin_data[i];
	}
	pctrl->desc.pins = pins;

	pctrl->desc.num_custom_params = FUNC0(pm8xxx_gpio_bindings);
	pctrl->desc.custom_params = pm8xxx_gpio_bindings;
#ifdef CONFIG_DEBUG_FS
	pctrl->desc.custom_conf_items = pm8xxx_conf_items;
#endif

	pctrl->pctrl = FUNC11(&pdev->dev, &pctrl->desc, pctrl);
	if (FUNC1(pctrl->pctrl)) {
		FUNC5(&pdev->dev, "couldn't register pm8xxx gpio driver\n");
		return FUNC2(pctrl->pctrl);
	}

	pctrl->chip = pm8xxx_gpio_template;
	pctrl->chip.base = -1;
	pctrl->chip.parent = &pdev->dev;
	pctrl->chip.of_node = pdev->dev.of_node;
	pctrl->chip.of_gpio_n_cells = 2;
	pctrl->chip.label = FUNC7(pctrl->dev);
	pctrl->chip.ngpio = pctrl->npins;

	parent_node = FUNC18(pctrl->dev->of_node);
	if (!parent_node)
		return -ENXIO;

	parent_domain = FUNC17(parent_node);
	FUNC19(parent_node);
	if (!parent_domain)
		return -ENXIO;

	pctrl->fwnode = FUNC20(pctrl->dev->of_node);
	pctrl->domain = FUNC15(parent_domain, 0,
						    pctrl->chip.ngpio,
						    pctrl->fwnode,
						    &pm8xxx_domain_ops,
						    &pctrl->chip);
	if (!pctrl->domain)
		return -ENODEV;

	ret = FUNC12(&pctrl->chip, pctrl);
	if (ret) {
		FUNC5(&pdev->dev, "failed register gpiochip\n");
		goto err_chip_add_data;
	}

	/*
	 * For DeviceTree-supported systems, the gpio core checks the
	 * pinctrl's device node for the "gpio-ranges" property.
	 * If it is present, it takes care of adding the pin ranges
	 * for the driver. In this case the driver can skip ahead.
	 *
	 * In order to remain compatible with older, existing DeviceTree
	 * files which don't set the "gpio-ranges" property or systems that
	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
	 */
	if (!FUNC21(pctrl->dev->of_node, "gpio-ranges")) {
		ret = FUNC13(&pctrl->chip, FUNC7(pctrl->dev),
					     0, 0, pctrl->chip.ngpio);
		if (ret) {
			FUNC5(pctrl->dev, "failed to add pin range\n");
			goto unregister_gpiochip;
		}
	}

	FUNC22(pdev, pctrl);

	FUNC4(&pdev->dev, "Qualcomm pm8xxx gpio driver probed\n");

	return 0;

unregister_gpiochip:
	FUNC14(&pctrl->chip);
err_chip_add_data:
	FUNC16(pctrl->domain);

	return ret;
}