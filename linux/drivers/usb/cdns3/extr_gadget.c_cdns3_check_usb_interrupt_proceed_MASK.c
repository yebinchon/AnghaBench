#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int speed; } ;
struct cdns3_device {TYPE_2__ gadget; int /*<<< orphan*/  lock; TYPE_3__* gadget_driver; TYPE_1__* regs; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* resume ) (TYPE_2__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_2__*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  drbl; } ;

/* Variables and functions */
 int USB_ISTS_CON2I ; 
 int USB_ISTS_CONI ; 
 int USB_ISTS_DIS2I ; 
 int USB_ISTS_DISI ; 
 int USB_ISTS_L1ENTI ; 
 int USB_ISTS_L2ENTI ; 
 int USB_ISTS_L2EXTI ; 
 int USB_ISTS_U2RESI ; 
 int USB_ISTS_U3ENTI ; 
 int USB_ISTS_U3EXTI ; 
 int USB_ISTS_UHRESI ; 
 int USB_ISTS_UWRESI ; 
 int USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  USB_STATE_POWERED ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*) ; 
 int FUNC3 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC13(struct cdns3_device *priv_dev,
					      u32 usb_ists)
{
	int speed = 0;

	FUNC10(priv_dev, usb_ists);
	if (usb_ists & USB_ISTS_L1ENTI) {
		/*
		 * WORKAROUND: CDNS3 controller has issue with hardware resuming
		 * from L1. To fix it, if any DMA transfer is pending driver
		 * must starts driving resume signal immediately.
		 */
		if (FUNC5(&priv_dev->regs->drbl))
			FUNC0(priv_dev);
	}

	/* Connection detected */
	if (usb_ists & (USB_ISTS_CON2I | USB_ISTS_CONI)) {
		speed = FUNC3(priv_dev);
		priv_dev->gadget.speed = speed;
		FUNC11(&priv_dev->gadget, USB_STATE_POWERED);
		FUNC2(priv_dev);
	}

	/* Disconnection detected */
	if (usb_ists & (USB_ISTS_DIS2I | USB_ISTS_DISI)) {
		FUNC1(priv_dev);
		priv_dev->gadget.speed = USB_SPEED_UNKNOWN;
		FUNC11(&priv_dev->gadget, USB_STATE_NOTATTACHED);
		FUNC4(priv_dev);
	}

	if (usb_ists & (USB_ISTS_L2ENTI | USB_ISTS_U3ENTI)) {
		if (priv_dev->gadget_driver &&
		    priv_dev->gadget_driver->suspend) {
			FUNC7(&priv_dev->lock);
			priv_dev->gadget_driver->suspend(&priv_dev->gadget);
			FUNC6(&priv_dev->lock);
		}
	}

	if (usb_ists & (USB_ISTS_L2EXTI | USB_ISTS_U3EXTI)) {
		if (priv_dev->gadget_driver &&
		    priv_dev->gadget_driver->resume) {
			FUNC7(&priv_dev->lock);
			priv_dev->gadget_driver->resume(&priv_dev->gadget);
			FUNC6(&priv_dev->lock);
		}
	}

	/* reset*/
	if (usb_ists & (USB_ISTS_UWRESI | USB_ISTS_UHRESI | USB_ISTS_U2RESI)) {
		if (priv_dev->gadget_driver) {
			FUNC7(&priv_dev->lock);
			FUNC12(&priv_dev->gadget,
					     priv_dev->gadget_driver);
			FUNC6(&priv_dev->lock);

			/*read again to check the actual speed*/
			speed = FUNC3(priv_dev);
			priv_dev->gadget.speed = speed;
			FUNC4(priv_dev);
			FUNC2(priv_dev);
		}
	}
}