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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct brcmstb_reset {TYPE_1__ rcdev; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_INIT_BANK_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  brcmstb_reset_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct brcmstb_reset*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct brcmstb_reset* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *kdev = &pdev->dev;
	struct brcmstb_reset *priv;
	struct resource *res;

	priv = FUNC7(kdev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!FUNC1(res->start, SW_INIT_BANK_SIZE) ||
	    !FUNC1(FUNC10(res), SW_INIT_BANK_SIZE)) {
		FUNC4(kdev, "incorrect register range\n");
		return -EINVAL;
	}

	priv->base = FUNC6(kdev, res);
	if (FUNC2(priv->base))
		return FUNC3(priv->base);

	FUNC5(kdev, priv);

	priv->rcdev.owner = THIS_MODULE;
	priv->rcdev.nr_resets = FUNC0(FUNC10(res),
						   SW_INIT_BANK_SIZE) * 32;
	priv->rcdev.ops = &brcmstb_reset_ops;
	priv->rcdev.of_node = kdev->of_node;
	/* Use defaults: 1 cell and simple xlate function */

	return FUNC8(kdev, &priv->rcdev);
}