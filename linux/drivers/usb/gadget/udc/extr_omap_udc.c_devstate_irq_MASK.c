#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {scalar_t__ speed; } ;
struct omap_udc {int devstat; int /*<<< orphan*/  lock; TYPE_3__ gadget; TYPE_2__* driver; int /*<<< orphan*/  transceiver; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* resume ) (TYPE_3__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_3__*) ;TYPE_1__ driver; int /*<<< orphan*/  (* disconnect ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int OTG_FLAGS ; 
 int UDC_ADD ; 
 int UDC_ATT ; 
 int UDC_CFG ; 
 int UDC_DEF ; 
 int /*<<< orphan*/  UDC_DEVSTAT ; 
 int UDC_DS_CHG ; 
 int UDC_DS_CHG_IE ; 
 int UDC_EP0_IE ; 
 int /*<<< orphan*/  UDC_IRQ_EN ; 
 int /*<<< orphan*/  UDC_IRQ_SRC ; 
 int UDC_SUS ; 
 int UDC_USB_RESET ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_udc*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_udc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct omap_udc*) ; 
 int /*<<< orphan*/  FUNC15 (struct omap_udc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC17(struct omap_udc *udc, u16 irq_src)
{
	u16	devstat, change;

	devstat = FUNC5(UDC_DEVSTAT);
	change = devstat ^ udc->devstat;
	udc->devstat = devstat;

	if (change & (UDC_USB_RESET|UDC_ATT)) {
		FUNC14(udc);

		if (change & UDC_ATT) {
			/* driver for any external transceiver will
			 * have called omap_vbus_session() already
			 */
			if (devstat & UDC_ATT) {
				udc->gadget.speed = USB_SPEED_FULL;
				FUNC3("connect\n");
				if (FUNC2(udc->transceiver))
					FUNC8(udc);
				/* if (driver->connect) call it */
			} else if (udc->gadget.speed != USB_SPEED_UNKNOWN) {
				udc->gadget.speed = USB_SPEED_UNKNOWN;
				if (FUNC2(udc->transceiver))
					FUNC7(udc);
				FUNC0("disconnect, gadget %s\n",
					udc->driver->driver.name);
				if (udc->driver->disconnect) {
					FUNC10(&udc->lock);
					udc->driver->disconnect(&udc->gadget);
					FUNC9(&udc->lock);
				}
			}
			change &= ~UDC_ATT;
		}

		if (change & UDC_USB_RESET) {
			if (devstat & UDC_USB_RESET) {
				FUNC3("RESET=1\n");
			} else {
				udc->gadget.speed = USB_SPEED_FULL;
				FUNC1("USB reset done, gadget %s\n",
					udc->driver->driver.name);
				/* ep0 traffic is legal from now on */
				FUNC6(UDC_DS_CHG_IE | UDC_EP0_IE,
						UDC_IRQ_EN);
			}
			change &= ~UDC_USB_RESET;
		}
	}
	if (change & UDC_SUS) {
		if (udc->gadget.speed != USB_SPEED_UNKNOWN) {
			/* FIXME tell isp1301 to suspend/resume (?) */
			if (devstat & UDC_SUS) {
				FUNC3("suspend\n");
				FUNC15(udc);
				/* HNP could be under way already */
				if (udc->gadget.speed == USB_SPEED_FULL
						&& udc->driver->suspend) {
					FUNC10(&udc->lock);
					udc->driver->suspend(&udc->gadget);
					FUNC9(&udc->lock);
				}
				if (!FUNC2(udc->transceiver))
					FUNC16(
							udc->transceiver, 1);
			} else {
				FUNC3("resume\n");
				if (!FUNC2(udc->transceiver))
					FUNC16(
							udc->transceiver, 0);
				if (udc->gadget.speed == USB_SPEED_FULL
						&& udc->driver->resume) {
					FUNC10(&udc->lock);
					udc->driver->resume(&udc->gadget);
					FUNC9(&udc->lock);
				}
			}
		}
		change &= ~UDC_SUS;
	}
	if (!FUNC4() && (change & OTG_FLAGS)) {
		FUNC15(udc);
		change &= ~OTG_FLAGS;
	}

	change &= ~(UDC_CFG|UDC_DEF|UDC_ADD);
	if (change)
		FUNC3("devstat %03x, ignore change %03x\n",
			devstat,  change);

	FUNC6(UDC_DS_CHG, UDC_IRQ_SRC);
}