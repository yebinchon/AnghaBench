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
struct usbatm_data {struct uea_softc* driver_data; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct uea_softc {int /*<<< orphan*/  kthread; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 size_t FUNC0 (struct usb_device_id const*) ; 
 scalar_t__ FUNC1 (struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chip_name ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  uea_usbatm_driver ; 
 struct usbatm_data* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int FUNC10 (struct usb_interface*,struct usb_device_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *usb = FUNC3(intf);
	int ret;

	FUNC5(usb);
	FUNC6(usb, "ADSL device founded vid (%#X) pid (%#X) Rev (%#X): %s\n",
		FUNC4(usb->descriptor.idVendor),
		FUNC4(usb->descriptor.idProduct),
		FUNC4(usb->descriptor.bcdDevice),
		chip_name[FUNC0(id)]);

	FUNC9(usb);

	if (FUNC1(id))
		return FUNC7(usb, FUNC0(id));

	ret = FUNC10(intf, id, &uea_usbatm_driver);
	if (ret == 0) {
		struct usbatm_data *usbatm = FUNC8(intf);
		struct uea_softc *sc = usbatm->driver_data;

		/* Ensure carrier is initialized to off as early as possible */
		FUNC2(ATM_PHY_SIG_LOST);

		/* Only start the worker thread when all init is done */
		FUNC11(sc->kthread);
	}

	return ret;
}