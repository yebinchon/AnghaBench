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
struct dove_thermal_priv {struct thermal_zone_device* control; struct thermal_zone_device* sensor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct dove_thermal_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dove_thermal_priv*) ; 
 int /*<<< orphan*/  ops ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dove_thermal_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct thermal_zone_device *thermal = NULL;
	struct dove_thermal_priv *priv;
	struct resource *res;
	int ret;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	priv->sensor = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->sensor))
		return FUNC1(priv->sensor);

	res = FUNC6(pdev, IORESOURCE_MEM, 1);
	priv->control = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->control))
		return FUNC1(priv->control);

	ret = FUNC5(priv);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to initialize sensor\n");
		return ret;
	}

	thermal = FUNC8("dove_thermal", 0, 0,
					       priv, &ops, NULL, 0, 0);
	if (FUNC0(thermal)) {
		FUNC2(&pdev->dev,
			"Failed to register thermal zone device\n");
		return FUNC1(thermal);
	}

	FUNC7(pdev, thermal);

	return 0;
}