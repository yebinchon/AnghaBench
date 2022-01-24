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
struct TYPE_2__ {int npins; int /*<<< orphan*/  owner; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  name; } ;
struct rza2_pinctrl_priv {int npins; TYPE_1__ desc; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RZA2_PINS_PER_PORT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rza2_pinctrl_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rza2_pinctrl_priv*) ; 
 int /*<<< orphan*/ * port_names ; 
 int /*<<< orphan*/  rza2_pinctrl_ops ; 
 int FUNC8 (struct rza2_pinctrl_priv*) ; 
 int /*<<< orphan*/  rza2_pinmux_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct rza2_pinctrl_priv *priv;
	struct resource *res;
	int ret;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = &pdev->dev;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	FUNC7(pdev, priv);

	priv->npins = (int)(uintptr_t)FUNC5(&pdev->dev) *
		      RZA2_PINS_PER_PORT;

	priv->desc.name		= DRIVER_NAME;
	priv->desc.pctlops	= &rza2_pinctrl_ops;
	priv->desc.pmxops	= &rza2_pinmux_ops;
	priv->desc.owner	= THIS_MODULE;

	ret = FUNC8(priv);
	if (ret)
		return ret;

	FUNC2(&pdev->dev, "Registered ports P0 - P%c\n",
		 port_names[priv->desc.npins / RZA2_PINS_PER_PORT - 1]);

	return 0;
}