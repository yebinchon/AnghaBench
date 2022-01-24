#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_device_attribute {struct renesas_usb3_priv* data; } ;
struct resource {int dummy; } ;
struct renesas_usb3_priv {int /*<<< orphan*/  workaround_for_vbus; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; } ;
struct renesas_usb3 {int role_sw_by_connector; int /*<<< orphan*/  ep0_req; TYPE_2__ gadget; int /*<<< orphan*/ * phy; int /*<<< orphan*/  workaround_for_vbus; int /*<<< orphan*/ * role_sw; int /*<<< orphan*/  host_dev; int /*<<< orphan*/  role_work; int /*<<< orphan*/ * extcon; int /*<<< orphan*/  extcon_work; int /*<<< orphan*/  lock; int /*<<< orphan*/ * reg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_role ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,struct resource*) ; 
 struct renesas_usb3* FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct renesas_usb3*) ; 
 struct renesas_usb3_priv* FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renesas_usb3_cable ; 
 int /*<<< orphan*/  FUNC23 (struct renesas_usb3*,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct renesas_usb3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct renesas_usb3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renesas_usb3_extcon_work ; 
 int /*<<< orphan*/  renesas_usb3_gadget_ops ; 
 int FUNC26 (struct renesas_usb3*,int /*<<< orphan*/ *,struct renesas_usb3_priv const*) ; 
 int /*<<< orphan*/  FUNC27 (struct renesas_usb3*,int /*<<< orphan*/ *,struct renesas_usb3_priv const*) ; 
 int /*<<< orphan*/  renesas_usb3_irq ; 
 int /*<<< orphan*/  renesas_usb3_quirks_match ; 
 TYPE_1__ renesas_usb3_role_switch_desc ; 
 int /*<<< orphan*/  renesas_usb3_role_work ; 
 struct soc_device_attribute* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udc_name ; 
 int FUNC30 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct renesas_usb3 *usb3;
	struct resource *res;
	int irq, ret;
	const struct renesas_usb3_priv *priv;
	const struct soc_device_attribute *attr;

	attr = FUNC28(renesas_usb3_quirks_match);
	if (attr)
		priv = attr->data;
	else
		priv = FUNC18(&pdev->dev);

	irq = FUNC19(pdev, 0);
	if (irq < 0)
		return irq;

	usb3 = FUNC15(&pdev->dev, sizeof(*usb3), GFP_KERNEL);
	if (!usb3)
		return -ENOMEM;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	usb3->reg = FUNC14(&pdev->dev, res);
	if (FUNC2(usb3->reg))
		return FUNC3(usb3->reg);

	FUNC21(pdev, usb3);
	FUNC29(&usb3->lock);

	usb3->gadget.ops = &renesas_usb3_gadget_ops;
	usb3->gadget.name = udc_name;
	usb3->gadget.max_speed = USB_SPEED_SUPER;
	FUNC0(&usb3->gadget.ep_list);
	ret = FUNC26(usb3, &pdev->dev, priv);
	if (ret < 0)
		return ret;
	FUNC27(usb3, &pdev->dev, priv);

	ret = FUNC17(&pdev->dev, irq, renesas_usb3_irq, 0,
			       FUNC9(&pdev->dev), usb3);
	if (ret < 0)
		return ret;

	FUNC1(&usb3->extcon_work, renesas_usb3_extcon_work);
	usb3->extcon = FUNC12(&pdev->dev, renesas_usb3_cable);
	if (FUNC2(usb3->extcon))
		return FUNC3(usb3->extcon);

	ret = FUNC13(&pdev->dev, usb3->extcon);
	if (ret < 0) {
		FUNC6(&pdev->dev, "Failed to register extcon\n");
		return ret;
	}

	/* for ep0 handling */
	usb3->ep0_req = FUNC4(GFP_KERNEL);
	if (!usb3->ep0_req)
		return -ENOMEM;

	ret = FUNC24(usb3, &pdev->dev);
	if (ret < 0)
		goto err_alloc_prd;

	/*
	 * This is optional. So, if this driver cannot get a phy,
	 * this driver will not handle a phy anymore.
	 */
	usb3->phy = FUNC16(&pdev->dev, "usb");
	if (FUNC2(usb3->phy)) {
		ret = FUNC3(usb3->phy);
		goto err_add_udc;
	}

	FUNC22(&pdev->dev);
	ret = FUNC30(&pdev->dev, &usb3->gadget);
	if (ret < 0)
		goto err_add_udc;

	ret = FUNC10(&pdev->dev, &dev_attr_role);
	if (ret < 0)
		goto err_dev_create;

	if (FUNC11(&pdev->dev, "usb-role-switch")) {
		usb3->role_sw_by_connector = true;
		renesas_usb3_role_switch_desc.fwnode = FUNC7(&pdev->dev);
	}

	FUNC1(&usb3->role_work, renesas_usb3_role_work);
	usb3->role_sw = FUNC33(&pdev->dev,
					&renesas_usb3_role_switch_desc);
	if (!FUNC2(usb3->role_sw)) {
		usb3->host_dev = FUNC32(&pdev->dev);
		if (!usb3->host_dev) {
			/* If not found, this driver will not use a role sw */
			FUNC34(usb3->role_sw);
			usb3->role_sw = NULL;
		}
	} else {
		usb3->role_sw = NULL;
	}

	usb3->workaround_for_vbus = priv->workaround_for_vbus;

	FUNC23(usb3, &pdev->dev);

	FUNC8(&pdev->dev, "probed%s\n", usb3->phy ? " with phy" : "");

	return 0;

err_dev_create:
	FUNC31(&usb3->gadget);

err_add_udc:
	FUNC25(usb3, &pdev->dev);

err_alloc_prd:
	FUNC5(usb3->ep0_req);

	return ret;
}