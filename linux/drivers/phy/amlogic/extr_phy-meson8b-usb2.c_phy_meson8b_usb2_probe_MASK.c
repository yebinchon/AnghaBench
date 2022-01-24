#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct phy_provider {int dummy; } ;
struct phy_meson8b_usb2_priv {scalar_t__ dr_mode; struct phy* reset; struct phy* clk_usb; struct phy* clk_usb_general; struct phy* regs; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (TYPE_1__*,char*) ; 
 struct phy* FUNC5 (TYPE_1__*,struct resource*) ; 
 struct phy_meson8b_usb2_priv* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  phy_meson8b_usb2_ops ; 
 int /*<<< orphan*/  FUNC11 (struct phy*,struct phy_meson8b_usb2_priv*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct phy_meson8b_usb2_priv *priv;
	struct resource *res;
	struct phy *phy;
	struct phy_provider *phy_provider;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	priv->regs = FUNC5(&pdev->dev, res);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	priv->clk_usb_general = FUNC4(&pdev->dev, "usb_general");
	if (FUNC0(priv->clk_usb_general))
		return FUNC1(priv->clk_usb_general);

	priv->clk_usb = FUNC4(&pdev->dev, "usb");
	if (FUNC0(priv->clk_usb))
		return FUNC1(priv->clk_usb);

	priv->reset = FUNC9(&pdev->dev, NULL);
	if (FUNC1(priv->reset) == -EPROBE_DEFER)
		return FUNC1(priv->reset);

	priv->dr_mode = FUNC10(pdev->dev.of_node, -1);
	if (priv->dr_mode == USB_DR_MODE_UNKNOWN) {
		FUNC3(&pdev->dev,
			"missing dual role configuration of the controller\n");
		return -EINVAL;
	}

	phy = FUNC8(&pdev->dev, NULL, &phy_meson8b_usb2_ops);
	if (FUNC0(phy)) {
		FUNC3(&pdev->dev, "failed to create PHY\n");
		return FUNC1(phy);
	}

	FUNC11(phy, priv);

	phy_provider =
		FUNC7(&pdev->dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}