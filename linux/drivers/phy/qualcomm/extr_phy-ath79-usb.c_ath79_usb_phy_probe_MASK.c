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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;
struct ath79_usb_phy {struct phy* no_suspend_override; struct phy* reset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath79_usb_phy_ops ; 
 struct ath79_usb_phy* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct phy* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct ath79_usb_phy*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct ath79_usb_phy *priv;
	struct phy *phy;

	priv = FUNC3(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->reset = FUNC6(&pdev->dev, "phy");
	if (FUNC0(priv->reset))
		return FUNC1(priv->reset);

	priv->no_suspend_override = FUNC7(
		&pdev->dev, "usb-suspend-override");
	if (FUNC0(priv->no_suspend_override))
		return FUNC1(priv->no_suspend_override);

	phy = FUNC5(&pdev->dev, NULL, &ath79_usb_phy_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	FUNC8(phy, priv);

	return FUNC2(FUNC4(
				&pdev->dev, of_phy_simple_xlate));
}