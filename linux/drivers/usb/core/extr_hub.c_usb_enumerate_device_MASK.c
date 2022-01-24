#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {scalar_t__ tpl_support; } ;
struct TYPE_3__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  iProduct; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_2__* bus; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; int /*<<< orphan*/ * config; } ;
struct TYPE_4__ {scalar_t__ is_b_host; scalar_t__ b_hnp_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_USB_OTG ; 
 int /*<<< orphan*/  CONFIG_USB_OTG_WHITELIST ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMSG_AUTO_SUSPEND ; 
 struct usb_hcd* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 void* FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int FUNC7 (struct usb_device*) ; 
 int FUNC8 (struct usb_device*) ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_device *udev)
{
	int err;
	struct usb_hcd *hcd = FUNC1(udev->bus);

	if (udev->config == NULL) {
		err = FUNC8(udev);
		if (err < 0) {
			if (err != -ENODEV)
				FUNC3(&udev->dev, "can't read configurations, error %d\n",
						err);
			return err;
		}
	}

	/* read the standard strings and cache them if present */
	udev->product = FUNC5(udev, udev->descriptor.iProduct);
	udev->manufacturer = FUNC5(udev,
					      udev->descriptor.iManufacturer);
	udev->serial = FUNC5(udev, udev->descriptor.iSerialNumber);

	err = FUNC7(udev);
	if (err < 0)
		return err;

	if (FUNC0(CONFIG_USB_OTG_WHITELIST) && hcd->tpl_support &&
		!FUNC4(udev)) {
		/* Maybe it can talk to us, though we can't talk to it.
		 * (Includes HNP test device.)
		 */
		if (FUNC0(CONFIG_USB_OTG) && (udev->bus->b_hnp_enable
			|| udev->bus->is_b_host)) {
			err = FUNC9(udev, PMSG_AUTO_SUSPEND);
			if (err < 0)
				FUNC2(&udev->dev, "HNP fail, %d\n", err);
		}
		return -ENOTSUPP;
	}

	FUNC6(udev);

	return 0;
}