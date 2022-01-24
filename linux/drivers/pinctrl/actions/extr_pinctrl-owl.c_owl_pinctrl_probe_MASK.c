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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct owl_pinctrl_soc_data {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;
struct TYPE_4__ {int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; } ;
struct owl_pinctrl {int num_irq; int* irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  pctrldev; int /*<<< orphan*/ * dev; struct owl_pinctrl_soc_data* soc; TYPE_1__ chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
struct TYPE_5__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 int* FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct owl_pinctrl* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,struct owl_pinctrl*) ; 
 int /*<<< orphan*/  owl_gpio_direction_input ; 
 int /*<<< orphan*/  owl_gpio_direction_output ; 
 int /*<<< orphan*/  owl_gpio_free ; 
 int /*<<< orphan*/  owl_gpio_get ; 
 int FUNC11 (struct owl_pinctrl*) ; 
 int /*<<< orphan*/  owl_gpio_request ; 
 int /*<<< orphan*/  owl_gpio_set ; 
 TYPE_2__ owl_pinctrl_desc ; 
 int FUNC12 (struct platform_device*,int) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct owl_pinctrl*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct platform_device *pdev,
				struct owl_pinctrl_soc_data *soc_data)
{
	struct resource *res;
	struct owl_pinctrl *pctrl;
	int ret, i;

	pctrl = FUNC9(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	pctrl->base = FUNC7(&pdev->dev, res);
	if (FUNC0(pctrl->base))
		return FUNC1(pctrl->base);

	/* enable GPIO/MFP clock */
	pctrl->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(pctrl->clk)) {
		FUNC4(&pdev->dev, "no clock defined\n");
		return FUNC1(pctrl->clk);
	}

	ret = FUNC3(pctrl->clk);
	if (ret) {
		FUNC4(&pdev->dev, "clk enable failed\n");
		return ret;
	}

	FUNC16(&pctrl->lock);

	owl_pinctrl_desc.name = FUNC5(&pdev->dev);
	owl_pinctrl_desc.pins = soc_data->pins;
	owl_pinctrl_desc.npins = soc_data->npins;

	pctrl->chip.direction_input  = owl_gpio_direction_input;
	pctrl->chip.direction_output = owl_gpio_direction_output;
	pctrl->chip.get = owl_gpio_get;
	pctrl->chip.set = owl_gpio_set;
	pctrl->chip.request = owl_gpio_request;
	pctrl->chip.free = owl_gpio_free;

	pctrl->soc = soc_data;
	pctrl->dev = &pdev->dev;

	pctrl->pctrldev = FUNC10(&pdev->dev,
					&owl_pinctrl_desc, pctrl);
	if (FUNC0(pctrl->pctrldev)) {
		FUNC4(&pdev->dev, "could not register Actions OWL pinmux driver\n");
		ret = FUNC1(pctrl->pctrldev);
		goto err_exit;
	}

	ret = FUNC14(pdev);
	if (ret < 0)
		goto err_exit;

	pctrl->num_irq = ret;

	pctrl->irq = FUNC8(&pdev->dev, pctrl->num_irq,
					sizeof(*pctrl->irq), GFP_KERNEL);
	if (!pctrl->irq) {
		ret = -ENOMEM;
		goto err_exit;
	}

	for (i = 0; i < pctrl->num_irq ; i++) {
		ret = FUNC12(pdev, i);
		if (ret < 0)
			goto err_exit;
		pctrl->irq[i] = ret;
	}

	ret = FUNC11(pctrl);
	if (ret)
		goto err_exit;

	FUNC15(pdev, pctrl);

	return 0;

err_exit:
	FUNC2(pctrl->clk);

	return ret;
}