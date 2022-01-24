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
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  name; } ;
struct rza1_pinctrl {int /*<<< orphan*/  data; TYPE_1__ desc; int /*<<< orphan*/  mutex; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct rza1_pinctrl* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rza1_pinctrl*) ; 
 int /*<<< orphan*/  rza1_pinctrl_ops ; 
 int FUNC8 (struct rza1_pinctrl*) ; 
 int /*<<< orphan*/  rza1_pinmux_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct rza1_pinctrl *rza1_pctl;
	int ret;

	rza1_pctl = FUNC3(&pdev->dev, sizeof(*rza1_pctl), GFP_KERNEL);
	if (!rza1_pctl)
		return -ENOMEM;

	rza1_pctl->dev = &pdev->dev;

	rza1_pctl->base = FUNC4(pdev, 0);
	if (FUNC0(rza1_pctl->base))
		return FUNC1(rza1_pctl->base);

	FUNC5(&rza1_pctl->mutex);

	FUNC7(pdev, rza1_pctl);

	rza1_pctl->desc.name	= DRIVER_NAME;
	rza1_pctl->desc.pctlops	= &rza1_pinctrl_ops;
	rza1_pctl->desc.pmxops	= &rza1_pinmux_ops;
	rza1_pctl->desc.owner	= THIS_MODULE;
	rza1_pctl->data		= FUNC6(&pdev->dev);

	ret = FUNC8(rza1_pctl);
	if (ret)
		return ret;

	FUNC2(&pdev->dev,
		 "RZ/A1 pin controller and gpio successfully registered\n");

	return 0;
}