#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_phy_data {int dummy; } ;
struct usb_otg {TYPE_1__* usb_phy; int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; } ;
struct resource {int start; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct of_device_id {struct usb_phy_data* data; } ;
struct TYPE_8__ {char* label; int /*<<< orphan*/  type; struct usb_otg* otg; TYPE_2__* dev; } ;
struct dm816x_usb_phy {int usb_ctrl; int usbphy_ctrl; int instance; TYPE_1__ phy; TYPE_2__* dev; struct phy_provider* refclk; struct phy_provider* syscon; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int FUNC2 (struct phy_provider*) ; 
 struct phy_provider* FUNC3 (TYPE_2__*,char*) ; 
 void* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm816x_usb_phy_id_table ; 
 int /*<<< orphan*/  dm816x_usb_phy_set_host ; 
 int /*<<< orphan*/  dm816x_usb_phy_set_peripheral ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC9 (struct phy_provider*,struct dm816x_usb_phy*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct dm816x_usb_phy*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 struct phy_provider* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct dm816x_usb_phy *phy;
	struct resource *res;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct usb_otg *otg;
	const struct of_device_id *of_id;
	const struct usb_phy_data *phy_data;
	int error;

	of_id = FUNC7(FUNC8(dm816x_usb_phy_id_table),
				&pdev->dev);
	if (!of_id)
		return -EINVAL;

	phy = FUNC4(&pdev->dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENOENT;

	phy->syscon = FUNC13(pdev->dev.of_node,
						      "syscon");
	if (FUNC0(phy->syscon))
		return FUNC1(phy->syscon);

	/*
	 * According to sprs614e.pdf, the first usb_ctrl is shared and
	 * the second instance for usb_ctrl is reserved.. Also the
	 * register bits are different from earlier TRMs.
	 */
	phy->usb_ctrl = 0x20;
	phy->usbphy_ctrl = (res->start & 0xff) + 4;
	if (phy->usbphy_ctrl == 0x2c)
		phy->instance = 1;

	phy_data = of_id->data;

	otg = FUNC4(&pdev->dev, sizeof(*otg), GFP_KERNEL);
	if (!otg)
		return -ENOMEM;

	phy->dev = &pdev->dev;
	phy->phy.dev = phy->dev;
	phy->phy.label = "dm8168_usb_phy";
	phy->phy.otg = otg;
	phy->phy.type = USB_PHY_TYPE_USB2;
	otg->set_host = dm816x_usb_phy_set_host;
	otg->set_peripheral = dm816x_usb_phy_set_peripheral;
	otg->usb_phy = &phy->phy;

	FUNC11(pdev, phy);

	phy->refclk = FUNC3(phy->dev, "refclk");
	if (FUNC0(phy->refclk))
		return FUNC1(phy->refclk);
	error = FUNC2(phy->refclk);
	if (error)
		return error;

	FUNC12(phy->dev);
	generic_phy = FUNC6(phy->dev, NULL, &ops);
	if (FUNC0(generic_phy))
		return FUNC1(generic_phy);

	FUNC9(generic_phy, phy);

	phy_provider = FUNC5(phy->dev,
						     of_phy_simple_xlate);
	if (FUNC0(phy_provider))
		return FUNC1(phy_provider);

	FUNC14(&phy->phy);

	return 0;
}