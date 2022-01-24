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
struct device {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct hi3660_priv {int /*<<< orphan*/  eye_diagram_param; struct phy* otg_bc; struct phy* pctrl; struct phy* peri_crg; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HI3660_USB_DEFAULT_PHY_PARAM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct hi3660_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hi3660_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct hi3660_priv*) ; 
 struct phy* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct phy *phy;
	struct hi3660_priv *priv;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;
	priv->peri_crg = FUNC10(dev->of_node,
					"hisilicon,pericrg-syscon");
	if (FUNC0(priv->peri_crg)) {
		FUNC3(dev, "no hisilicon,pericrg-syscon\n");
		return FUNC1(priv->peri_crg);
	}

	priv->pctrl = FUNC10(dev->of_node,
					"hisilicon,pctrl-syscon");
	if (FUNC0(priv->pctrl)) {
		FUNC3(dev, "no hisilicon,pctrl-syscon\n");
		return FUNC1(priv->pctrl);
	}

	/* node of hi3660 phy is a sub-node of usb3_otg_bc */
	priv->otg_bc = FUNC9(dev->parent->of_node);
	if (FUNC0(priv->otg_bc)) {
		FUNC3(dev, "no hisilicon,usb3-otg-bc-syscon\n");
		return FUNC1(priv->otg_bc);
	}

	if (FUNC7(dev->of_node, "hisilicon,eye-diagram-param",
		&(priv->eye_diagram_param)))
		priv->eye_diagram_param = HI3660_USB_DEFAULT_PHY_PARAM;

	phy = FUNC6(dev, NULL, &hi3660_phy_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	FUNC8(phy, priv);
	phy_provider = FUNC5(dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}