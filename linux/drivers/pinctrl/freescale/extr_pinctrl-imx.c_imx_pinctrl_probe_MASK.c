#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {char* name; } ;
struct regmap {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_desc {int npins; int /*<<< orphan*/  num_custom_params; int /*<<< orphan*/  custom_params; int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; TYPE_2__* pmxops; int /*<<< orphan*/ * pctlops; scalar_t__ pins; int /*<<< orphan*/  name; } ;
struct imx_pinctrl_soc_info {int npins; int flags; int /*<<< orphan*/  gpio_set_direction; int /*<<< orphan*/  num_custom_params; int /*<<< orphan*/  custom_params; scalar_t__ pins; scalar_t__ gpr_compatible; } ;
struct imx_pinctrl {int /*<<< orphan*/  pctl; TYPE_1__* dev; struct imx_pinctrl_soc_info const* info; int /*<<< orphan*/  mutex; int /*<<< orphan*/  input_sel_base; struct regmap* base; TYPE_5__* pin_regs; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int mux_reg; int conf_reg; } ;
struct TYPE_11__ {int /*<<< orphan*/  gpio_set_direction; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IMX_USE_SCU ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_5__* FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct pinctrl_desc*,struct imx_pinctrl*,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_pinctrl*) ; 
 int /*<<< orphan*/  imx_pctrl_ops ; 
 int /*<<< orphan*/  imx_pinconf_ops ; 
 int FUNC10 (struct platform_device*,struct imx_pinctrl*) ; 
 TYPE_2__ imx_pmx_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 struct device_node* FUNC14 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct imx_pinctrl*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct regmap*,struct regmap_config*) ; 
 struct regmap* FUNC19 (scalar_t__) ; 

int FUNC20(struct platform_device *pdev,
		      const struct imx_pinctrl_soc_info *info)
{
	struct regmap_config config = { .name = "gpr" };
	struct device_node *dev_np = pdev->dev.of_node;
	struct pinctrl_desc *imx_pinctrl_desc;
	struct device_node *np;
	struct imx_pinctrl *ipctl;
	struct regmap *gpr;
	int ret, i;

	if (!info || !info->pins || !info->npins) {
		FUNC2(&pdev->dev, "wrong pinctrl info\n");
		return -EINVAL;
	}

	if (info->gpr_compatible) {
		gpr = FUNC19(info->gpr_compatible);
		if (!FUNC0(gpr))
			FUNC18(&pdev->dev, gpr, &config);
	}

	/* Create state holders etc for this driver */
	ipctl = FUNC6(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
	if (!ipctl)
		return -ENOMEM;

	if (!(info->flags & IMX_USE_SCU)) {
		ipctl->pin_regs = FUNC5(&pdev->dev, info->npins,
						     sizeof(*ipctl->pin_regs),
						     GFP_KERNEL);
		if (!ipctl->pin_regs)
			return -ENOMEM;

		for (i = 0; i < info->npins; i++) {
			ipctl->pin_regs[i].mux_reg = -1;
			ipctl->pin_regs[i].conf_reg = -1;
		}

		ipctl->base = FUNC8(pdev, 0);
		if (FUNC0(ipctl->base))
			return FUNC1(ipctl->base);

		if (FUNC15(dev_np, "fsl,input-sel")) {
			np = FUNC14(dev_np, "fsl,input-sel", 0);
			if (!np) {
				FUNC2(&pdev->dev, "iomuxc fsl,input-sel property not found\n");
				return -EINVAL;
			}

			ipctl->input_sel_base = FUNC12(np, 0);
			FUNC13(np);
			if (!ipctl->input_sel_base) {
				FUNC2(&pdev->dev,
					"iomuxc input select base address not found\n");
				return -ENOMEM;
			}
		}
	}

	imx_pinctrl_desc = FUNC6(&pdev->dev, sizeof(*imx_pinctrl_desc),
					GFP_KERNEL);
	if (!imx_pinctrl_desc)
		return -ENOMEM;

	imx_pinctrl_desc->name = FUNC4(&pdev->dev);
	imx_pinctrl_desc->pins = info->pins;
	imx_pinctrl_desc->npins = info->npins;
	imx_pinctrl_desc->pctlops = &imx_pctrl_ops;
	imx_pinctrl_desc->pmxops = &imx_pmx_ops;
	imx_pinctrl_desc->confops = &imx_pinconf_ops;
	imx_pinctrl_desc->owner = THIS_MODULE;

	/* for generic pinconf */
	imx_pinctrl_desc->custom_params = info->custom_params;
	imx_pinctrl_desc->num_custom_params = info->num_custom_params;

	/* platform specific callback */
	imx_pmx_ops.gpio_set_direction = info->gpio_set_direction;

	FUNC11(&ipctl->mutex);

	ipctl->info = info;
	ipctl->dev = &pdev->dev;
	FUNC17(pdev, ipctl);
	ret = FUNC7(&pdev->dev,
					     imx_pinctrl_desc, ipctl,
					     &ipctl->pctl);
	if (ret) {
		FUNC2(&pdev->dev, "could not register IMX pinctrl driver\n");
		goto free;
	}

	ret = FUNC10(pdev, ipctl);
	if (ret) {
		FUNC2(&pdev->dev, "fail to probe dt properties\n");
		goto free;
	}

	FUNC3(&pdev->dev, "initialized IMX pinctrl driver\n");

	return FUNC16(ipctl->pctl);

free:
	FUNC9(ipctl);

	return ret;
}