#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct pm8xxx_pin_data {scalar_t__ irq; int /*<<< orphan*/  reg; } ;
struct TYPE_14__ {int base; int of_gpio_n_cells; int ngpio; int /*<<< orphan*/  label; int /*<<< orphan*/  of_node; TYPE_6__* parent; } ;
struct TYPE_13__ {int npins; int /*<<< orphan*/  custom_conf_items; int /*<<< orphan*/  custom_params; int /*<<< orphan*/  num_custom_params; struct pinctrl_pin_desc* pins; } ;
struct pm8xxx_mpp {int npins; TYPE_2__ chip; TYPE_6__* dev; int /*<<< orphan*/  pctrl; TYPE_1__ desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct pinctrl_pin_desc {int number; struct pm8xxx_pin_data* drv_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 void* FUNC8 (TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 
 struct pm8xxx_mpp* FUNC9 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_1__*,struct pm8xxx_mpp*) ; 
 int FUNC11 (TYPE_2__*,struct pm8xxx_mpp*) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct platform_device*,int) ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct pm8xxx_mpp*) ; 
 int /*<<< orphan*/  pm8xxx_conf_items ; 
 int /*<<< orphan*/ * pm8xxx_groups ; 
 int /*<<< orphan*/  pm8xxx_mpp_bindings ; 
 TYPE_2__ pm8xxx_mpp_template ; 
 int FUNC17 (struct pm8xxx_mpp*,struct pm8xxx_pin_data*) ; 
 TYPE_1__ pm8xxx_pinctrl_desc ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct pm8xxx_pin_data *pin_data;
	struct pinctrl_pin_desc *pins;
	struct pm8xxx_mpp *pctrl;
	int ret;
	int i, npins;

	pctrl = FUNC9(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	pctrl->dev = &pdev->dev;
	npins = FUNC15(pdev);
	if (!npins)
		return -EINVAL;
	if (npins < 0)
		return npins;
	pctrl->npins = npins;

	pctrl->regmap = FUNC6(pdev->dev.parent, NULL);
	if (!pctrl->regmap) {
		FUNC5(&pdev->dev, "parent regmap unavailable\n");
		return -ENXIO;
	}

	pctrl->desc = pm8xxx_pinctrl_desc;
	pctrl->desc.npins = pctrl->npins;

	pins = FUNC8(&pdev->dev,
			    pctrl->desc.npins,
			    sizeof(struct pinctrl_pin_desc),
			    GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	pin_data = FUNC8(&pdev->dev,
				pctrl->desc.npins,
				sizeof(struct pm8xxx_pin_data),
				GFP_KERNEL);
	if (!pin_data)
		return -ENOMEM;

	for (i = 0; i < pctrl->desc.npins; i++) {
		pin_data[i].reg = FUNC3(i);
		pin_data[i].irq = FUNC14(pdev, i);
		if (pin_data[i].irq < 0)
			return pin_data[i].irq;

		ret = FUNC17(pctrl, &pin_data[i]);
		if (ret)
			return ret;

		pins[i].number = i;
		pins[i].name = pm8xxx_groups[i];
		pins[i].drv_data = &pin_data[i];
	}
	pctrl->desc.pins = pins;

	pctrl->desc.num_custom_params = FUNC0(pm8xxx_mpp_bindings);
	pctrl->desc.custom_params = pm8xxx_mpp_bindings;
#ifdef CONFIG_DEBUG_FS
	pctrl->desc.custom_conf_items = pm8xxx_conf_items;
#endif

	pctrl->pctrl = FUNC10(&pdev->dev, &pctrl->desc, pctrl);
	if (FUNC1(pctrl->pctrl)) {
		FUNC5(&pdev->dev, "couldn't register pm8xxx mpp driver\n");
		return FUNC2(pctrl->pctrl);
	}

	pctrl->chip = pm8xxx_mpp_template;
	pctrl->chip.base = -1;
	pctrl->chip.parent = &pdev->dev;
	pctrl->chip.of_node = pdev->dev.of_node;
	pctrl->chip.of_gpio_n_cells = 2;
	pctrl->chip.label = FUNC7(pctrl->dev);
	pctrl->chip.ngpio = pctrl->npins;
	ret = FUNC11(&pctrl->chip, pctrl);
	if (ret) {
		FUNC5(&pdev->dev, "failed register gpiochip\n");
		return ret;
	}

	ret = FUNC12(&pctrl->chip,
				     FUNC7(pctrl->dev),
				     0, 0, pctrl->chip.ngpio);
	if (ret) {
		FUNC5(pctrl->dev, "failed to add pin range\n");
		goto unregister_gpiochip;
	}

	FUNC16(pdev, pctrl);

	FUNC4(&pdev->dev, "Qualcomm pm8xxx mpp driver probed\n");

	return 0;

unregister_gpiochip:
	FUNC13(&pctrl->chip);

	return ret;
}