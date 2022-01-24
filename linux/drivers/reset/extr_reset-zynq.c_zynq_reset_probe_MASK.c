#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct zynq_reset_data {TYPE_2__ rcdev; int /*<<< orphan*/  offset; int /*<<< orphan*/  slcr; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct zynq_reset_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct zynq_reset_data*) ; 
 int FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zynq_reset_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource *res;
	struct zynq_reset_data *priv;

	priv = FUNC3(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC6(pdev, priv);

	priv->slcr = FUNC8(pdev->dev.of_node,
						     "syscon");
	if (FUNC0(priv->slcr)) {
		FUNC2(&pdev->dev, "unable to get zynq-slcr regmap");
		return FUNC1(priv->slcr);
	}

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "missing IO resource\n");
		return -ENODEV;
	}

	priv->offset = res->start;

	priv->rcdev.owner = THIS_MODULE;
	priv->rcdev.nr_resets = FUNC7(res) / 4 * BITS_PER_LONG;
	priv->rcdev.ops = &zynq_reset_ops;
	priv->rcdev.of_node = pdev->dev.of_node;

	return FUNC4(&pdev->dev, &priv->rcdev);
}