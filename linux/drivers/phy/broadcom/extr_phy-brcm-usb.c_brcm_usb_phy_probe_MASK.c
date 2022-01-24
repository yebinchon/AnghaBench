#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  ioc; int /*<<< orphan*/  ipp; void* xhci_ec_regs; void* ctrl_regs; int /*<<< orphan*/  family_name; int /*<<< orphan*/  product_id; int /*<<< orphan*/  family_id; } ;
struct brcm_usb_phy_data {int has_xhci; int has_eohci; int /*<<< orphan*/  usb_30_clk; int /*<<< orphan*/  usb_20_clk; TYPE_1__ ini; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  USB_CTLR_MODE_DRD ; 
 int /*<<< orphan*/  USB_CTLR_MODE_HOST ; 
 int /*<<< orphan*/ * brcm_dr_mode_to_name ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ ** brcm_usb_phy_attrs ; 
 int FUNC4 (struct device*,struct brcm_usb_phy_data*,struct device_node*) ; 
 int /*<<< orphan*/  brcm_usb_phy_group ; 
 int /*<<< orphan*/  brcm_usb_phy_xlate ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*) ; 
 void* FUNC15 (struct device*,struct resource*) ; 
 struct brcm_usb_phy_data* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct device_node*,char*) ; 
 int FUNC21 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct brcm_usb_phy_data*) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct brcm_usb_phy_data *priv;
	struct phy_provider *phy_provider;
	struct device_node *dn = pdev->dev.of_node;
	int err;
	const char *mode;

	priv = FUNC16(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC24(pdev, priv);

	priv->ini.family_id = FUNC9();
	priv->ini.product_id = FUNC10();
	FUNC5(&priv->ini);
	FUNC12(dev, "Best mapping table is for %s\n",
		priv->ini.family_name);
	res = FUNC23(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC13(dev, "can't get USB_CTRL base address\n");
		return -EINVAL;
	}
	priv->ini.ctrl_regs = FUNC15(dev, res);
	if (FUNC1(priv->ini.ctrl_regs)) {
		FUNC13(dev, "can't map CTRL register space\n");
		return -EINVAL;
	}

	/* The XHCI EC registers are optional */
	res = FUNC23(pdev, IORESOURCE_MEM, 1);
	if (res) {
		priv->ini.xhci_ec_regs =
			FUNC15(dev, res);
		if (FUNC1(priv->ini.xhci_ec_regs)) {
			FUNC13(dev, "can't map XHCI EC register space\n");
			return -EINVAL;
		}
	}

	FUNC22(dn, "brcm,ipp", &priv->ini.ipp);
	FUNC22(dn, "brcm,ioc", &priv->ini.ioc);

	priv->ini.mode = USB_CTLR_MODE_HOST;
	err = FUNC21(dn, "dr_mode", &mode);
	if (err == 0) {
		FUNC19(&brcm_dr_mode_to_name[0],
			      FUNC0(brcm_dr_mode_to_name),
			mode, &priv->ini.mode);
	}
	if (FUNC20(dn, "brcm,has-xhci"))
		priv->has_xhci = true;
	if (FUNC20(dn, "brcm,has-eohci"))
		priv->has_eohci = true;

	err = FUNC4(dev, priv, dn);
	if (err)
		return err;

	FUNC18(&priv->mutex);

	/* make sure invert settings are correct */
	FUNC3(&priv->ini);

	/*
	 * Create sysfs entries for mode.
	 * Remove "dual_select" attribute if not in dual mode
	 */
	if (priv->ini.mode != USB_CTLR_MODE_DRD)
		brcm_usb_phy_attrs[1] = NULL;
	err = FUNC25(&dev->kobj, &brcm_usb_phy_group);
	if (err)
		FUNC14(dev, "Error creating sysfs attributes\n");

	/* start with everything off */
	if (priv->has_xhci)
		FUNC8(&priv->ini);
	if (priv->has_eohci)
		FUNC7(&priv->ini);
	FUNC6(&priv->ini);
	FUNC11(priv->usb_20_clk);
	FUNC11(priv->usb_30_clk);

	phy_provider = FUNC17(dev, brcm_usb_phy_xlate);

	return FUNC2(phy_provider);
}