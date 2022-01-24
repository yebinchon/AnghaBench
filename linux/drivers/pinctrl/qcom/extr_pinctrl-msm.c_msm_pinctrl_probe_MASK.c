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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_pinctrl_soc_data {int ntiles; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/ * tiles; } ;
struct TYPE_2__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  owner; } ;
struct msm_pinctrl {scalar_t__ irq; void* pctrl; TYPE_1__ desc; struct msm_pinctrl_soc_data const* soc; void** regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  chip; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct msm_pinctrl* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct msm_pinctrl*) ; 
 int FUNC8 (struct msm_pinctrl*) ; 
 int /*<<< orphan*/  msm_gpio_template ; 
 int /*<<< orphan*/  msm_pinconf_ops ; 
 int /*<<< orphan*/  msm_pinctrl_ops ; 
 int /*<<< orphan*/  FUNC9 (struct msm_pinctrl*) ; 
 int /*<<< orphan*/  msm_pinmux_ops ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct msm_pinctrl*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct platform_device *pdev,
		      const struct msm_pinctrl_soc_data *soc_data)
{
	struct msm_pinctrl *pctrl;
	struct resource *res;
	int ret;
	int i;

	pctrl = FUNC6(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	pctrl->dev = &pdev->dev;
	pctrl->soc = soc_data;
	pctrl->chip = msm_gpio_template;

	FUNC14(&pctrl->lock);

	if (soc_data->tiles) {
		for (i = 0; i < soc_data->ntiles; i++) {
			res = FUNC12(pdev, IORESOURCE_MEM,
							   soc_data->tiles[i]);
			pctrl->regs[i] = FUNC5(&pdev->dev, res);
			if (FUNC0(pctrl->regs[i]))
				return FUNC1(pctrl->regs[i]);
		}
	} else {
		res = FUNC11(pdev, IORESOURCE_MEM, 0);
		pctrl->regs[0] = FUNC5(&pdev->dev, res);
		if (FUNC0(pctrl->regs[0]))
			return FUNC1(pctrl->regs[0]);
	}

	FUNC9(pctrl);

	pctrl->irq = FUNC10(pdev, 0);
	if (pctrl->irq < 0)
		return pctrl->irq;

	pctrl->desc.owner = THIS_MODULE;
	pctrl->desc.pctlops = &msm_pinctrl_ops;
	pctrl->desc.pmxops = &msm_pinmux_ops;
	pctrl->desc.confops = &msm_pinconf_ops;
	pctrl->desc.name = FUNC4(&pdev->dev);
	pctrl->desc.pins = pctrl->soc->pins;
	pctrl->desc.npins = pctrl->soc->npins;

	pctrl->pctrl = FUNC7(&pdev->dev, &pctrl->desc, pctrl);
	if (FUNC0(pctrl->pctrl)) {
		FUNC3(&pdev->dev, "Couldn't register pinctrl driver\n");
		return FUNC1(pctrl->pctrl);
	}

	ret = FUNC8(pctrl);
	if (ret)
		return ret;

	FUNC13(pdev, pctrl);

	FUNC2(&pdev->dev, "Probed Qualcomm pinctrl driver\n");

	return 0;
}