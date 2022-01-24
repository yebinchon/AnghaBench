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
struct usbhs_priv {int /*<<< orphan*/  base; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  power_ctrl ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,int /*<<< orphan*/ ,struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct device* FUNC3 (struct usbhs_priv*) ; 
 struct platform_device* FUNC4 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_priv*) ; 
 scalar_t__ FUNC7 (struct usbhs_priv*) ; 

__attribute__((used)) static void FUNC8(struct usbhs_priv *priv, int enable)
{
	struct platform_device *pdev = FUNC4(priv);
	struct device *dev = FUNC3(priv);

	if (enable) {
		/* enable PM */
		FUNC0(dev);

		/* enable clks */
		if (FUNC7(priv))
			return;

		/* enable platform power */
		FUNC2(priv, power_ctrl, pdev, priv->base, enable);

		/* USB on */
		FUNC5(priv, enable);
	} else {
		/* USB off */
		FUNC5(priv, enable);

		/* disable platform power */
		FUNC2(priv, power_ctrl, pdev, priv->base, enable);

		/* disable clks */
		FUNC6(priv);

		/* disable PM */
		FUNC1(dev);
	}
}