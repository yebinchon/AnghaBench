#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct m48t35_priv {int /*<<< orphan*/  rtc; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  size; int /*<<< orphan*/  baseaddr; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct m48t35_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m48t35_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct m48t35_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource *res;
	struct m48t35_priv *priv;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	priv = FUNC2(&pdev->dev, sizeof(struct m48t35_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->size = FUNC7(res);
	/*
	 * kludge: remove the #ifndef after ioc3 resource
	 * conflicts are resolved
	 */
#ifndef CONFIG_SGI_IP27
	if (!FUNC3(&pdev->dev, res->start, priv->size,
				     pdev->name))
		return -EBUSY;
#endif
	priv->baseaddr = res->start;
	priv->reg = FUNC1(&pdev->dev, priv->baseaddr, priv->size);
	if (!priv->reg)
		return -ENOMEM;

	FUNC8(&priv->lock);

	FUNC6(pdev, priv);

	priv->rtc = FUNC4(&pdev->dev, "m48t35",
				  &m48t35_ops, THIS_MODULE);
	return FUNC0(priv->rtc);
}