#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {struct omap_usb_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct otg_device {void* vbus; void* id; int /*<<< orphan*/  base; TYPE_4__ vbus_nb; TYPE_4__ id_nb; struct extcon_dev* extcon; } ;
struct omap_usb_config {int /*<<< orphan*/  extcon; } ;
struct extcon_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int,int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC3 (TYPE_1__*,struct extcon_dev*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct otg_device* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct extcon_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct extcon_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_otg_id_notifier ; 
 int /*<<< orphan*/  FUNC8 (struct otg_device*) ; 
 int /*<<< orphan*/  omap_otg_vbus_notifier ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct otg_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct omap_usb_config *config = pdev->dev.platform_data;
	struct otg_device *otg_dev;
	struct extcon_dev *extcon;
	int ret;
	u32 rev;

	if (!config || !config->extcon)
		return -ENODEV;

	extcon = FUNC6(config->extcon);
	if (!extcon)
		return -EPROBE_DEFER;

	otg_dev = FUNC5(&pdev->dev, sizeof(*otg_dev), GFP_KERNEL);
	if (!otg_dev)
		return -ENOMEM;

	otg_dev->base = FUNC4(&pdev->dev, &pdev->resource[0]);
	if (FUNC0(otg_dev->base))
		return FUNC1(otg_dev->base);

	otg_dev->extcon = extcon;
	otg_dev->id_nb.notifier_call = omap_otg_id_notifier;
	otg_dev->vbus_nb.notifier_call = omap_otg_vbus_notifier;

	ret = FUNC3(&pdev->dev, extcon,
					EXTCON_USB_HOST, &otg_dev->id_nb);
	if (ret)
		return ret;

	ret = FUNC3(&pdev->dev, extcon,
					EXTCON_USB, &otg_dev->vbus_nb);
	if (ret) {
		return ret;
	}

	otg_dev->id = FUNC7(extcon, EXTCON_USB_HOST);
	otg_dev->vbus = FUNC7(extcon, EXTCON_USB);
	FUNC8(otg_dev);

	rev = FUNC10(otg_dev->base);

	FUNC2(&pdev->dev,
		 "OMAP USB OTG controller rev %d.%d (%s, id=%d, vbus=%d)\n",
		 (rev >> 4) & 0xf, rev & 0xf, config->extcon, otg_dev->id,
		 otg_dev->vbus);

	FUNC9(pdev, otg_dev);

	return 0;
}