#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int base; int ngpio; int of_gpio_n_cells; int can_sleep; void* label; struct device* parent; } ;
struct pmic_mpp_state {TYPE_1__ chip; struct device* dev; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  map; } ;
struct pmic_mpp_pad {scalar_t__ irq; scalar_t__ base; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_pin_desc {int number; int /*<<< orphan*/  name; struct pmic_mpp_pad* drv_data; } ;
struct pinctrl_desc {int npins; int num_custom_params; int /*<<< orphan*/  custom_conf_items; int /*<<< orphan*/ * custom_params; struct pinctrl_pin_desc* pins; void* name; int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PMIC_MPP_ADDRESS_RANGE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct pinctrl_desc*,struct pmic_mpp_state*) ; 
 int FUNC10 (TYPE_1__*,struct pmic_mpp_state*) ; 
 int FUNC11 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC14 (struct platform_device*,int) ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct pmic_mpp_state*) ; 
 int /*<<< orphan*/  pmic_conf_items ; 
 int /*<<< orphan*/ * pmic_mpp_bindings ; 
 TYPE_1__ pmic_mpp_gpio_template ; 
 int /*<<< orphan*/ * pmic_mpp_groups ; 
 int /*<<< orphan*/  pmic_mpp_pinconf_ops ; 
 int /*<<< orphan*/  pmic_mpp_pinctrl_ops ; 
 int /*<<< orphan*/  pmic_mpp_pinmux_ops ; 
 int FUNC17 (struct pmic_mpp_state*,struct pmic_mpp_pad*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct pinctrl_pin_desc *pindesc;
	struct pinctrl_desc *pctrldesc;
	struct pmic_mpp_pad *pad, *pads;
	struct pmic_mpp_state *state;
	int ret, npins, i;
	u32 reg;

	ret = FUNC13(dev->of_node, "reg", &reg);
	if (ret < 0) {
		FUNC4(dev, "missing base address");
		return ret;
	}

	npins = FUNC15(pdev);
	if (!npins)
		return -EINVAL;
	if (npins < 0)
		return npins;

	FUNC1(npins > FUNC0(pmic_mpp_groups));

	state = FUNC8(dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC16(pdev, state);

	state->dev = &pdev->dev;
	state->map = FUNC5(dev->parent, NULL);

	pindesc = FUNC7(dev, npins, sizeof(*pindesc), GFP_KERNEL);
	if (!pindesc)
		return -ENOMEM;

	pads = FUNC7(dev, npins, sizeof(*pads), GFP_KERNEL);
	if (!pads)
		return -ENOMEM;

	pctrldesc = FUNC8(dev, sizeof(*pctrldesc), GFP_KERNEL);
	if (!pctrldesc)
		return -ENOMEM;

	pctrldesc->pctlops = &pmic_mpp_pinctrl_ops;
	pctrldesc->pmxops = &pmic_mpp_pinmux_ops;
	pctrldesc->confops = &pmic_mpp_pinconf_ops;
	pctrldesc->owner = THIS_MODULE;
	pctrldesc->name = FUNC6(dev);
	pctrldesc->pins = pindesc;
	pctrldesc->npins = npins;

	pctrldesc->num_custom_params = FUNC0(pmic_mpp_bindings);
	pctrldesc->custom_params = pmic_mpp_bindings;
#ifdef CONFIG_DEBUG_FS
	pctrldesc->custom_conf_items = pmic_conf_items;
#endif

	for (i = 0; i < npins; i++, pindesc++) {
		pad = &pads[i];
		pindesc->drv_data = pad;
		pindesc->number = i;
		pindesc->name = pmic_mpp_groups[i];

		pad->irq = FUNC14(pdev, i);
		if (pad->irq < 0)
			return pad->irq;

		pad->base = reg + i * PMIC_MPP_ADDRESS_RANGE;

		ret = FUNC17(state, pad);
		if (ret < 0)
			return ret;
	}

	state->chip = pmic_mpp_gpio_template;
	state->chip.parent = dev;
	state->chip.base = -1;
	state->chip.ngpio = npins;
	state->chip.label = FUNC6(dev);
	state->chip.of_gpio_n_cells = 2;
	state->chip.can_sleep = false;

	state->ctrl = FUNC9(dev, pctrldesc, state);
	if (FUNC2(state->ctrl))
		return FUNC3(state->ctrl);

	ret = FUNC10(&state->chip, state);
	if (ret) {
		FUNC4(state->dev, "can't add gpio chip\n");
		return ret;
	}

	ret = FUNC11(&state->chip, FUNC6(dev), 0, 0, npins);
	if (ret) {
		FUNC4(dev, "failed to add pin range\n");
		goto err_range;
	}

	return 0;

err_range:
	FUNC12(&state->chip);
	return ret;
}