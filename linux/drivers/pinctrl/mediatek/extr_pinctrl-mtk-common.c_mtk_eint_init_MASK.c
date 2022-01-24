#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct mtk_pinctrl {TYPE_2__* eint; TYPE_1__* devdata; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * gpio_xlate; struct mtk_pinctrl* pctl; int /*<<< orphan*/ * hw; int /*<<< orphan*/  regs; TYPE_4__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  base; } ;
struct TYPE_5__ {int /*<<< orphan*/  eint_hw; int /*<<< orphan*/  eint_regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct resource*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  mtk_eint_xt ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mtk_pinctrl *pctl, struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;

	if (!FUNC6(np, "interrupt-controller"))
		return -ENODEV;

	pctl->eint = FUNC3(pctl->dev, sizeof(*pctl->eint), GFP_KERNEL);
	if (!pctl->eint)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	pctl->eint->base = FUNC2(&pdev->dev, res);
	if (FUNC0(pctl->eint->base))
		return FUNC1(pctl->eint->base);

	pctl->eint->irq = FUNC4(np, 0);
	if (!pctl->eint->irq)
		return -EINVAL;

	pctl->eint->dev = &pdev->dev;
	/*
	 * If pctl->eint->regs == NULL, it would fall back into using a generic
	 * register map in mtk_eint_do_init calls.
	 */
	pctl->eint->regs = pctl->devdata->eint_regs;
	pctl->eint->hw = &pctl->devdata->eint_hw;
	pctl->eint->pctl = pctl;
	pctl->eint->gpio_xlate = &mtk_eint_xt;

	return FUNC5(pctl->eint);
}