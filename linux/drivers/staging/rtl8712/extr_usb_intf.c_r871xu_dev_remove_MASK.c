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
struct usb_interface {int dummy; } ;
struct usb_device {scalar_t__ state; } ;
struct net_device {int dummy; } ;
struct _adapter {int surprise_removed; int /*<<< orphan*/  rtl8712_fw_ready; int /*<<< orphan*/  fw; } ;
struct TYPE_2__ {scalar_t__ drv_registered; } ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 TYPE_1__ drvpriv ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 struct _adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct net_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *pusb_intf)
{
	struct net_device *pnetdev = FUNC9(pusb_intf);
	struct usb_device *udev = FUNC1(pusb_intf);

	if (pnetdev) {
		struct _adapter *padapter = FUNC2(pnetdev);

		FUNC12(pusb_intf, NULL);
		FUNC6(padapter->fw);
		/* never exit with a firmware callback pending */
		FUNC13(&padapter->rtl8712_fw_ready);
		if (drvpriv.drv_registered)
			padapter->surprise_removed = true;
		FUNC8(pnetdev); /* will call netdev_close() */
		FUNC0();
		FUNC7(1);
		/* Stop driver mlme relation timer */
		FUNC4(padapter);
		FUNC5(padapter);
		FUNC3(padapter);

		/* decrease the reference count of the usb device structure
		 * when disconnect
		 */
		FUNC10(udev);
	}
	/* If we didn't unplug usb dongle and remove/insert module, driver
	 * fails on sitesurvey for the first time when device is up.
	 * Reset usb port for sitesurvey fail issue.
	 */
	if (udev->state != USB_STATE_NOTATTACHED)
		FUNC11(udev);
}