#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_otg {TYPE_1__* usb_phy; int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct of_device_id {int dummy; } ;
struct TYPE_7__ {char* label; int /*<<< orphan*/  type; struct usb_otg* otg; TYPE_2__* dev; } ;
struct cpcap_phy_ddata {int /*<<< orphan*/  detect_work; int /*<<< orphan*/  active; TYPE_1__ phy; TYPE_2__* dev; struct phy_provider* vusb; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cpcap_usb_detect ; 
 int FUNC4 (struct cpcap_phy_ddata*) ; 
 int FUNC5 (struct platform_device*,struct cpcap_phy_ddata*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpcap_phy_ddata*) ; 
 int FUNC7 (struct cpcap_phy_ddata*) ; 
 int /*<<< orphan*/  cpcap_usb_phy_id_table ; 
 int /*<<< orphan*/  cpcap_usb_phy_set_host ; 
 int /*<<< orphan*/  cpcap_usb_phy_set_peripheral ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC16 (struct phy_provider*,struct cpcap_phy_ddata*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cpcap_phy_ddata*) ; 
 int FUNC18 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct cpcap_phy_ddata *ddata;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct usb_otg *otg;
	const struct of_device_id *of_id;
	int error;

	of_id = FUNC14(FUNC15(cpcap_usb_phy_id_table),
				&pdev->dev);
	if (!of_id)
		return -EINVAL;

	ddata = FUNC9(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	ddata->reg = FUNC8(pdev->dev.parent, NULL);
	if (!ddata->reg)
		return -ENODEV;

	otg = FUNC9(&pdev->dev, sizeof(*otg), GFP_KERNEL);
	if (!otg)
		return -ENOMEM;

	ddata->dev = &pdev->dev;
	ddata->phy.dev = ddata->dev;
	ddata->phy.label = "cpcap_usb_phy";
	ddata->phy.otg = otg;
	ddata->phy.type = USB_PHY_TYPE_USB2;
	otg->set_host = cpcap_usb_phy_set_host;
	otg->set_peripheral = cpcap_usb_phy_set_peripheral;
	otg->usb_phy = &ddata->phy;
	FUNC0(&ddata->detect_work, cpcap_usb_detect);
	FUNC17(pdev, ddata);

	ddata->vusb = FUNC12(&pdev->dev, "vusb");
	if (FUNC1(ddata->vusb))
		return FUNC2(ddata->vusb);

	error = FUNC18(ddata->vusb);
	if (error)
		return error;

	generic_phy = FUNC11(ddata->dev, NULL, &ops);
	if (FUNC1(generic_phy)) {
		error = FUNC2(generic_phy);
		return FUNC2(generic_phy);
	}

	FUNC16(generic_phy, ddata);

	phy_provider = FUNC10(ddata->dev,
						     of_phy_simple_xlate);
	if (FUNC1(phy_provider))
		return FUNC2(phy_provider);

	error = FUNC7(ddata);
	if (error)
		return error;

	FUNC6(ddata);

	error = FUNC4(ddata);
	if (error)
		return error;

	error = FUNC5(pdev, ddata);
	if (error)
		return error;

	FUNC20(&ddata->phy);
	FUNC3(&ddata->active, 1);
	FUNC19(&ddata->detect_work, FUNC13(1));

	return 0;
}