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
struct usbhs_priv {struct phy* phy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_GENERIC_PHY ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy*) ; 
 struct phy* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct usbhs_priv* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC4(pdev);

	if (FUNC0(CONFIG_GENERIC_PHY)) {
		struct phy *phy = FUNC3(&pdev->dev, "usb");

		if (FUNC1(phy))
			return FUNC2(phy);

		priv->phy = phy;
		return 0;
	}

	return -ENXIO;
}