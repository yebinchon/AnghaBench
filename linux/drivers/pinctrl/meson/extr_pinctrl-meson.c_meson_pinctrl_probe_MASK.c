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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_pinctrl_data {int /*<<< orphan*/  num_pins; int /*<<< orphan*/  pins; int /*<<< orphan*/  pmx_ops; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/ * confops; int /*<<< orphan*/  pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  owner; } ;
struct meson_pinctrl {int /*<<< orphan*/  pcdev; struct device* dev; TYPE_1__ desc; struct meson_pinctrl_data* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct meson_pinctrl* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,TYPE_1__*,struct meson_pinctrl*) ; 
 int FUNC5 (struct meson_pinctrl*) ; 
 int /*<<< orphan*/  meson_pctrl_ops ; 
 int /*<<< orphan*/  meson_pinconf_ops ; 
 int FUNC6 (struct meson_pinctrl*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*) ; 

int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct meson_pinctrl *pc;
	int ret;

	pc = FUNC3(dev, sizeof(struct meson_pinctrl), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	pc->dev = dev;
	pc->data = (struct meson_pinctrl_data *) FUNC7(dev);

	ret = FUNC6(pc, dev->of_node);
	if (ret)
		return ret;

	pc->desc.name		= "pinctrl-meson";
	pc->desc.owner		= THIS_MODULE;
	pc->desc.pctlops	= &meson_pctrl_ops;
	pc->desc.pmxops		= pc->data->pmx_ops;
	pc->desc.confops	= &meson_pinconf_ops;
	pc->desc.pins		= pc->data->pins;
	pc->desc.npins		= pc->data->num_pins;

	pc->pcdev = FUNC4(pc->dev, &pc->desc, pc);
	if (FUNC0(pc->pcdev)) {
		FUNC2(pc->dev, "can't register pinctrl device");
		return FUNC1(pc->pcdev);
	}

	return FUNC5(pc);
}