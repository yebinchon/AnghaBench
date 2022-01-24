#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_ctrlrequest {int bRequestType; scalar_t__ wLength; scalar_t__ wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct bcm63xx_udc {int /*<<< orphan*/  cfg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int /*<<< orphan*/  USB_REQ_SET_CONFIGURATION ; 
 int FUNC0 (struct bcm63xx_udc*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bcm63xx_udc *udc)
{
	struct usb_ctrlrequest ctrl;
	int rc;

	ctrl.bRequestType = USB_DIR_OUT | USB_RECIP_DEVICE;
	ctrl.bRequest = USB_REQ_SET_CONFIGURATION;
	ctrl.wValue = FUNC1(udc->cfg);
	ctrl.wIndex = 0;
	ctrl.wLength = 0;

	rc = FUNC0(udc, &ctrl);
	if (rc < 0) {
		FUNC2(udc->dev,
			"hardware auto-acked bad SET_CONFIGURATION(%d) request\n",
			udc->cfg);
	}
	return rc;
}