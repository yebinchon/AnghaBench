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
struct thermal_zone_device {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct brcmstb_thermal_priv {struct thermal_zone_device* thermal; int /*<<< orphan*/ * dev; struct thermal_zone_device* tmon_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  brcmstb_tmon_irq_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct thermal_zone_device* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct brcmstb_thermal_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcmstb_thermal_priv*) ; 
 struct thermal_zone_device* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct brcmstb_thermal_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_ops ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct brcmstb_thermal_priv*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct thermal_zone_device *thermal;
	struct brcmstb_thermal_priv *priv;
	struct resource *res;
	int irq, ret;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->tmon_base = FUNC4(&pdev->dev, res);
	if (FUNC0(priv->tmon_base))
		return FUNC1(priv->tmon_base);

	priv->dev = &pdev->dev;
	FUNC10(pdev, priv);

	thermal = FUNC7(&pdev->dev, 0, priv,
						       &of_ops);
	if (FUNC0(thermal)) {
		ret = FUNC1(thermal);
		FUNC2(&pdev->dev, "could not register sensor: %d\n", ret);
		return ret;
	}

	priv->thermal = thermal;

	irq = FUNC8(pdev, 0);
	if (irq < 0) {
		FUNC2(&pdev->dev, "could not get IRQ\n");
		return irq;
	}
	ret = FUNC6(&pdev->dev, irq, NULL,
					brcmstb_tmon_irq_thread, IRQF_ONESHOT,
					DRV_NAME, priv);
	if (ret < 0) {
		FUNC2(&pdev->dev, "could not request IRQ: %d\n", ret);
		return ret;
	}

	FUNC3(&pdev->dev, "registered AVS TMON of-sensor driver\n");

	return 0;
}