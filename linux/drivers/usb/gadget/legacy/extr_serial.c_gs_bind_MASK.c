#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_descriptor_header {int dummy; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct TYPE_8__ {int iManufacturer; int iProduct; } ;
struct TYPE_7__ {int iConfiguration; int /*<<< orphan*/  bmAttributes; struct usb_descriptor_header** descriptors; } ;
struct TYPE_6__ {int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GS_VERSION_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ) ; 
 size_t STRING_DESCRIPTION_IDX ; 
 int /*<<< orphan*/  USB_CONFIG_ATT_WAKEUP ; 
 size_t USB_GADGET_MANUFACTURER_IDX ; 
 size_t USB_GADGET_PRODUCT_IDX ; 
 int /*<<< orphan*/  coverwrite ; 
 TYPE_5__ device_desc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_descriptor_header*) ; 
 struct usb_descriptor_header** otg_desc ; 
 TYPE_3__ serial_config_driver ; 
 int FUNC3 (struct usb_composite_dev*,TYPE_3__*,char*) ; 
 TYPE_1__* strings_dev ; 
 int /*<<< orphan*/  FUNC4 (struct usb_composite_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct usb_descriptor_header* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_descriptor_header*) ; 
 int FUNC8 (struct usb_composite_dev*,TYPE_1__*) ; 
 scalar_t__ use_acm ; 
 scalar_t__ use_obex ; 

__attribute__((used)) static int FUNC9(struct usb_composite_dev *cdev)
{
	int			status;

	/* Allocate string descriptor numbers ... note that string
	 * contents can be overridden by the composite_dev glue.
	 */

	status = FUNC8(cdev, strings_dev);
	if (status < 0)
		goto fail;
	device_desc.iManufacturer = strings_dev[USB_GADGET_MANUFACTURER_IDX].id;
	device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
	status = strings_dev[STRING_DESCRIPTION_IDX].id;
	serial_config_driver.iConfiguration = status;

	if (FUNC1(cdev->gadget)) {
		if (!otg_desc[0]) {
			struct usb_descriptor_header *usb_desc;

			usb_desc = FUNC6(cdev->gadget);
			if (!usb_desc) {
				status = -ENOMEM;
				goto fail;
			}
			FUNC7(cdev->gadget, usb_desc);
			otg_desc[0] = usb_desc;
			otg_desc[1] = NULL;
		}
		serial_config_driver.descriptors = otg_desc;
		serial_config_driver.bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	/* register our configuration */
	if (use_acm) {
		status  = FUNC3(cdev, &serial_config_driver,
				"acm");
		FUNC5(cdev->gadget);
	} else if (use_obex)
		status = FUNC3(cdev, &serial_config_driver,
				"obex");
	else {
		status = FUNC3(cdev, &serial_config_driver,
				"gser");
	}
	if (status < 0)
		goto fail1;

	FUNC4(cdev, &coverwrite);
	FUNC0(cdev, "%s\n", GS_VERSION_NAME);

	return 0;
fail1:
	FUNC2(otg_desc[0]);
	otg_desc[0] = NULL;
fail:
	return status;
}