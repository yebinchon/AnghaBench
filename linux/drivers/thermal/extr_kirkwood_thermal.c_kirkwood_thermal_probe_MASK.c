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
struct kirkwood_thermal_priv {struct thermal_zone_device* sensor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct thermal_zone_device* FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct kirkwood_thermal_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kirkwood_thermal_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct thermal_zone_device *thermal = NULL;
	struct kirkwood_thermal_priv *priv;
	struct resource *res;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	priv->sensor = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->sensor))
		return FUNC1(priv->sensor);

	thermal = FUNC7("kirkwood_thermal", 0, 0,
					       priv, &ops, NULL, 0, 0);
	if (FUNC0(thermal)) {
		FUNC2(&pdev->dev,
			"Failed to register thermal zone device\n");
		return FUNC1(thermal);
	}

	FUNC6(pdev, thermal);

	return 0;
}