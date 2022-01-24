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
struct tango_thermal_priv {int /*<<< orphan*/  thresh_idx; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDX_MIN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tango_thermal_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tango_thermal_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ops ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct tango_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct tango_thermal_priv*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource *res;
	struct tango_thermal_priv *priv;
	struct thermal_zone_device *tzdev;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	FUNC7(pdev, priv);
	priv->thresh_idx = IDX_MIN;
	FUNC8(priv);

	tzdev = FUNC5(&pdev->dev, 0, priv, &ops);
	return FUNC2(tzdev);
}