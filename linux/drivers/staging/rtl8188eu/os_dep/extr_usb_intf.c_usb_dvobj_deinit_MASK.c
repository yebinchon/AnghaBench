#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct dvobj_priv {int NumInterfaces; int InterfaceNumber; int /*<<< orphan*/  usb_vendor_req_mutex; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 TYPE_1__* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct dvobj_priv* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *usb_intf)
{
	struct dvobj_priv *dvobj = FUNC4(usb_intf);

	FUNC7(usb_intf, NULL);
	if (dvobj) {
		/* Modify condition for 92DU DMDP 2010.11.18, by Thomas */
		if ((dvobj->NumInterfaces != 2 &&
		    dvobj->NumInterfaces != 3) ||
		    (dvobj->InterfaceNumber == 1)) {
			if (FUNC0(usb_intf)->state !=
			    USB_STATE_NOTATTACHED) {
				/* If we didn't unplug usb dongle and
				 * remove/insert module, driver fails
				 * on sitesurvey for the first time when
				 * device is up . Reset usb port for sitesurvey
				 * fail issue. */
				FUNC3("usb attached..., try to reset usb device\n");
				FUNC6(FUNC0(usb_intf));
			}
		}

		FUNC2(&dvobj->usb_vendor_req_mutex);
		FUNC1(dvobj);
	}

	FUNC5(FUNC0(usb_intf));
}