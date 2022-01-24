#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct pinctrl_pin_desc {int /*<<< orphan*/  name; int /*<<< orphan*/  number; } ;
struct mtk_pinctrl {int nbase; int /*<<< orphan*/  pctrl; struct mtk_pin_soc const* soc; int /*<<< orphan*/ * base; TYPE_3__* dev; } ;
struct mtk_pin_soc {int nbase_names; int npins; TYPE_1__* pins; int /*<<< orphan*/ * base_names; } ;
struct TYPE_11__ {int npins; int /*<<< orphan*/  custom_conf_items; int /*<<< orphan*/  custom_params; int /*<<< orphan*/  num_custom_params; struct pinctrl_pin_desc const* pins; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct resource*) ; 
 void* FUNC6 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 struct mtk_pinctrl* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*,struct mtk_pinctrl*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mtk_pinctrl*,struct platform_device*) ; 
 int FUNC10 (struct mtk_pinctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_conf_items ; 
 int /*<<< orphan*/  mtk_custom_bindings ; 
 TYPE_2__ mtk_desc ; 
 int FUNC11 (struct platform_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mtk_pinctrl*) ; 

int FUNC15(struct platform_device *pdev,
			    const struct mtk_pin_soc *soc)
{
	struct pinctrl_pin_desc *pins;
	struct mtk_pinctrl *hw;
	struct resource *res;
	int err, i;

	hw = FUNC7(&pdev->dev, sizeof(*hw), GFP_KERNEL);
	if (!hw)
		return -ENOMEM;

	FUNC14(pdev, hw);
	hw->soc = soc;
	hw->dev = &pdev->dev;

	if (!hw->soc->nbase_names) {
		FUNC3(&pdev->dev,
			"SoC should be assigned at least one register base\n");
		return -EINVAL;
	}

	hw->base = FUNC6(&pdev->dev, hw->soc->nbase_names,
				      sizeof(*hw->base), GFP_KERNEL);
	if (!hw->base)
		return -ENOMEM;

	for (i = 0; i < hw->soc->nbase_names; i++) {
		res = FUNC13(pdev, IORESOURCE_MEM,
						   hw->soc->base_names[i]);
		if (!res) {
			FUNC3(&pdev->dev, "missing IO resource\n");
			return -ENXIO;
		}

		hw->base[i] = FUNC5(&pdev->dev, res);
		if (FUNC1(hw->base[i]))
			return FUNC2(hw->base[i]);
	}

	hw->nbase = hw->soc->nbase_names;

	err = FUNC11(pdev);
	if (err) {
		FUNC3(&pdev->dev, "build state failed: %d\n", err);
		return -EINVAL;
	}

	/* Copy from internal struct mtk_pin_desc to register to the core */
	pins = FUNC6(&pdev->dev, hw->soc->npins, sizeof(*pins),
				  GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	for (i = 0; i < hw->soc->npins; i++) {
		pins[i].number = hw->soc->pins[i].number;
		pins[i].name = hw->soc->pins[i].name;
	}

	/* Setup pins descriptions per SoC types */
	mtk_desc.pins = (const struct pinctrl_pin_desc *)pins;
	mtk_desc.npins = hw->soc->npins;
	mtk_desc.num_custom_params = FUNC0(mtk_custom_bindings);
	mtk_desc.custom_params = mtk_custom_bindings;
#ifdef CONFIG_DEBUG_FS
	mtk_desc.custom_conf_items = mtk_conf_items;
#endif

	err = FUNC8(&pdev->dev, &mtk_desc, hw,
					     &hw->pctrl);
	if (err)
		return err;

	err = FUNC12(hw->pctrl);
	if (err)
		return err;

	err = FUNC9(hw, pdev);
	if (err)
		FUNC4(&pdev->dev,
			 "Failed to add EINT, but pinctrl still can work\n");

	/* Build gpiochip should be after pinctrl_enable is done */
	err = FUNC10(hw, pdev->dev.of_node);
	if (err) {
		FUNC3(&pdev->dev, "Failed to add gpio_chip\n");
		return err;
	}

	FUNC14(pdev, hw);

	return 0;
}