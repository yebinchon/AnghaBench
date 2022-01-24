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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dwc3_meson_g12a {int /*<<< orphan*/ * phys; int /*<<< orphan*/  role_switch; } ;

/* Variables and functions */
 int PHY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dwc3_meson_g12a* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dwc3_meson_g12a *priv = FUNC3(pdev);
	struct device *dev = &pdev->dev;
	int i;

	FUNC7(priv->role_switch);

	FUNC0(dev);

	for (i = 0 ; i < PHY_COUNT ; ++i) {
		FUNC2(priv->phys[i]);
		FUNC1(priv->phys[i]);
	}

	FUNC4(dev);
	FUNC5(dev);
	FUNC6(dev);

	return 0;
}