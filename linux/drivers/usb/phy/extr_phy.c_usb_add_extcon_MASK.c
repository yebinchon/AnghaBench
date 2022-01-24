#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ notifier_call; } ;
struct usb_phy {TYPE_3__ type_nb; TYPE_1__* dev; TYPE_3__ id_nb; struct extcon_dev* edev; struct extcon_dev* id_edev; TYPE_3__ vbus_nb; } ;
struct extcon_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_CHG_USB_ACA ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_CDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_DCP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SDP ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 scalar_t__ FUNC0 (struct extcon_dev*) ; 
 int FUNC1 (struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (TYPE_1__*,struct extcon_dev*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ usb_phy_get_charger_type ; 

__attribute__((used)) static int FUNC8(struct usb_phy *x)
{
	int ret;

	if (FUNC7(x->dev->of_node, "extcon")) {
		x->edev = FUNC6(x->dev, 0);
		if (FUNC0(x->edev))
			return FUNC1(x->edev);

		x->id_edev = FUNC6(x->dev, 1);
		if (FUNC0(x->id_edev)) {
			x->id_edev = NULL;
			FUNC4(x->dev, "No separate ID extcon device\n");
		}

		if (x->vbus_nb.notifier_call) {
			ret = FUNC5(x->dev, x->edev,
							    EXTCON_USB,
							    &x->vbus_nb);
			if (ret < 0) {
				FUNC3(x->dev,
					"register VBUS notifier failed\n");
				return ret;
			}
		} else {
			x->type_nb.notifier_call = usb_phy_get_charger_type;

			ret = FUNC5(x->dev, x->edev,
							    EXTCON_CHG_USB_SDP,
							    &x->type_nb);
			if (ret) {
				FUNC3(x->dev,
					"register extcon USB SDP failed.\n");
				return ret;
			}

			ret = FUNC5(x->dev, x->edev,
							    EXTCON_CHG_USB_CDP,
							    &x->type_nb);
			if (ret) {
				FUNC3(x->dev,
					"register extcon USB CDP failed.\n");
				return ret;
			}

			ret = FUNC5(x->dev, x->edev,
							    EXTCON_CHG_USB_DCP,
							    &x->type_nb);
			if (ret) {
				FUNC3(x->dev,
					"register extcon USB DCP failed.\n");
				return ret;
			}

			ret = FUNC5(x->dev, x->edev,
							    EXTCON_CHG_USB_ACA,
							    &x->type_nb);
			if (ret) {
				FUNC3(x->dev,
					"register extcon USB ACA failed.\n");
				return ret;
			}
		}

		if (x->id_nb.notifier_call) {
			struct extcon_dev *id_ext;

			if (x->id_edev)
				id_ext = x->id_edev;
			else
				id_ext = x->edev;

			ret = FUNC5(x->dev, id_ext,
							    EXTCON_USB_HOST,
							    &x->id_nb);
			if (ret < 0) {
				FUNC3(x->dev,
					"register ID notifier failed\n");
				return ret;
			}
		}
	}

	if (x->type_nb.notifier_call)
		FUNC2(x);

	return 0;
}