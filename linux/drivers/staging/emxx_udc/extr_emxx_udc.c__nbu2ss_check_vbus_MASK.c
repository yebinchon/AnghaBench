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
typedef  scalar_t__ u32 ;
struct nbu2ss_udc {int vbus_active; scalar_t__ devstate; scalar_t__ linux_suspended; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* driver; scalar_t__ usb_suspended; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 scalar_t__ USB_STATE_POWERED ; 
 int VBUS_CHATTERING_MDELAY ; 
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*) ; 
 int FUNC2 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct nbu2ss_udc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vbus_gpio ; 

__attribute__((used)) static inline void FUNC12(struct nbu2ss_udc *udc)
{
	int	nret;
	u32	reg_dt;

	/* chattering */
	FUNC8(VBUS_CHATTERING_MDELAY);		/* wait (ms) */

	/* VBUS ON Check*/
	reg_dt = FUNC7(vbus_gpio);
	if (reg_dt == 0) {
		udc->linux_suspended = 0;

		FUNC5(udc);
		FUNC6(udc->dev, " ----- VBUS OFF\n");

		if (udc->vbus_active == 1) {
			/* VBUS OFF */
			udc->vbus_active = 0;
			if (udc->usb_suspended) {
				udc->usb_suspended = 0;
				/* _nbu2ss_reset_controller(udc); */
			}
			udc->devstate = USB_STATE_NOTATTACHED;

			FUNC4(udc);
			if (udc->driver) {
				FUNC10(&udc->lock);
				udc->driver->disconnect(&udc->gadget);
				FUNC9(&udc->lock);
			}

			FUNC0(udc);
		}
	} else {
		FUNC8(5);		/* wait (5ms) */
		reg_dt = FUNC7(vbus_gpio);
		if (reg_dt == 0)
			return;

		FUNC6(udc->dev, " ----- VBUS ON\n");

		if (udc->linux_suspended)
			return;

		if (udc->vbus_active == 0) {
			/* VBUS ON */
			udc->vbus_active = 1;
			udc->devstate = USB_STATE_POWERED;

			nret = FUNC2(udc);
			if (nret < 0) {
				FUNC0(udc);
				udc->vbus_active = 0;
				return;
			}

			FUNC3(udc, 1);

#ifdef UDC_DEBUG_DUMP
			_nbu2ss_dump_register(udc);
#endif /* UDC_DEBUG_DUMP */

		} else {
			if (udc->devstate == USB_STATE_POWERED)
				FUNC3(udc, 1);
		}
	}
}