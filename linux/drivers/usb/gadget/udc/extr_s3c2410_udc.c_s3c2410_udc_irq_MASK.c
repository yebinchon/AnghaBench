#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {scalar_t__ speed; } ;
struct s3c2410_udc {int /*<<< orphan*/  lock; TYPE_5__* ep; void* ep0state; TYPE_3__ gadget; TYPE_2__* driver; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_9__ {TYPE_1__ ep; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* suspend ) (TYPE_3__*) ;int /*<<< orphan*/  (* resume ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_NORMAL ; 
 int /*<<< orphan*/  DEBUG_VERBOSE ; 
 void* EP0_IDLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_USBD ; 
 int S3C2410_ENDPOINTS ; 
 int /*<<< orphan*/  S3C2410_UDC_EP_INT_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_INDEX_EP0 ; 
 int /*<<< orphan*/  S3C2410_UDC_INDEX_REG ; 
 int S3C2410_UDC_INT_EP0 ; 
 int /*<<< orphan*/  S3C2410_UDC_IN_CSR1_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_MAXP_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_OUT_CSR1_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_PWR_REG ; 
 int S3C2410_UDC_USBINT_RESET ; 
 int S3C2410_UDC_USBINT_RESUME ; 
 int S3C2410_UDC_USBINT_SUSPEND ; 
 int /*<<< orphan*/  S3C2410_UDC_USB_INT_REG ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  base_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c2410_udc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int dummy, void *_dev)
{
	struct s3c2410_udc *dev = _dev;
	int usb_status;
	int usbd_status;
	int pwr_reg;
	int ep0csr;
	int i;
	u32 idx, idx2;
	unsigned long flags;

	FUNC3(&dev->lock, flags);

	/* Driver connected ? */
	if (!dev->driver) {
		/* Clear interrupts */
		FUNC8(FUNC7(S3C2410_UDC_USB_INT_REG),
				S3C2410_UDC_USB_INT_REG);
		FUNC8(FUNC7(S3C2410_UDC_EP_INT_REG),
				S3C2410_UDC_EP_INT_REG);
	}

	/* Save index */
	idx = FUNC7(S3C2410_UDC_INDEX_REG);

	/* Read status registers */
	usb_status = FUNC7(S3C2410_UDC_USB_INT_REG);
	usbd_status = FUNC7(S3C2410_UDC_EP_INT_REG);
	pwr_reg = FUNC7(S3C2410_UDC_PWR_REG);

	FUNC9(base_addr, S3C2410_UDC_INDEX_EP0, S3C2410_UDC_INDEX_REG);
	ep0csr = FUNC7(S3C2410_UDC_IN_CSR1_REG);

	FUNC0(DEBUG_NORMAL, "usbs=%02x, usbds=%02x, pwr=%02x ep0csr=%02x\n",
		usb_status, usbd_status, pwr_reg, ep0csr);

	/*
	 * Now, handle interrupts. There's two types :
	 * - Reset, Resume, Suspend coming -> usb_int_reg
	 * - EP -> ep_int_reg
	 */

	/* RESET */
	if (usb_status & S3C2410_UDC_USBINT_RESET) {
		/* two kind of reset :
		 * - reset start -> pwr reg = 8
		 * - reset end   -> pwr reg = 0
		 **/
		FUNC0(DEBUG_NORMAL, "USB reset csr %x pwr %x\n",
			ep0csr, pwr_reg);

		dev->gadget.speed = USB_SPEED_UNKNOWN;
		FUNC8(0x00, S3C2410_UDC_INDEX_REG);
		FUNC8((dev->ep[0].ep.maxpacket & 0x7ff) >> 3,
				S3C2410_UDC_MAXP_REG);
		dev->address = 0;

		dev->ep0state = EP0_IDLE;
		dev->gadget.speed = USB_SPEED_FULL;

		/* clear interrupt */
		FUNC8(S3C2410_UDC_USBINT_RESET,
				S3C2410_UDC_USB_INT_REG);

		FUNC8(idx, S3C2410_UDC_INDEX_REG);
		FUNC4(&dev->lock, flags);
		return IRQ_HANDLED;
	}

	/* RESUME */
	if (usb_status & S3C2410_UDC_USBINT_RESUME) {
		FUNC0(DEBUG_NORMAL, "USB resume\n");

		/* clear interrupt */
		FUNC8(S3C2410_UDC_USBINT_RESUME,
				S3C2410_UDC_USB_INT_REG);

		if (dev->gadget.speed != USB_SPEED_UNKNOWN
				&& dev->driver
				&& dev->driver->resume)
			dev->driver->resume(&dev->gadget);
	}

	/* SUSPEND */
	if (usb_status & S3C2410_UDC_USBINT_SUSPEND) {
		FUNC0(DEBUG_NORMAL, "USB suspend\n");

		/* clear interrupt */
		FUNC8(S3C2410_UDC_USBINT_SUSPEND,
				S3C2410_UDC_USB_INT_REG);

		if (dev->gadget.speed != USB_SPEED_UNKNOWN
				&& dev->driver
				&& dev->driver->suspend)
			dev->driver->suspend(&dev->gadget);

		dev->ep0state = EP0_IDLE;
	}

	/* EP */
	/* control traffic */
	/* check on ep0csr != 0 is not a good idea as clearing in_pkt_ready
	 * generate an interrupt
	 */
	if (usbd_status & S3C2410_UDC_INT_EP0) {
		FUNC0(DEBUG_VERBOSE, "USB ep0 irq\n");
		/* Clear the interrupt bit by setting it to 1 */
		FUNC8(S3C2410_UDC_INT_EP0, S3C2410_UDC_EP_INT_REG);
		FUNC2(dev);
	}

	/* endpoint data transfers */
	for (i = 1; i < S3C2410_ENDPOINTS; i++) {
		u32 tmp = 1 << i;
		if (usbd_status & tmp) {
			FUNC0(DEBUG_VERBOSE, "USB ep%d irq\n", i);

			/* Clear the interrupt bit by setting it to 1 */
			FUNC8(tmp, S3C2410_UDC_EP_INT_REG);
			FUNC1(&dev->ep[i]);
		}
	}

	/* what else causes this interrupt? a receive! who is it? */
	if (!usb_status && !usbd_status && !pwr_reg && !ep0csr) {
		for (i = 1; i < S3C2410_ENDPOINTS; i++) {
			idx2 = FUNC7(S3C2410_UDC_INDEX_REG);
			FUNC8(i, S3C2410_UDC_INDEX_REG);

			if (FUNC7(S3C2410_UDC_OUT_CSR1_REG) & 0x1)
				FUNC1(&dev->ep[i]);

			/* restore index */
			FUNC8(idx2, S3C2410_UDC_INDEX_REG);
		}
	}

	FUNC0(DEBUG_VERBOSE, "irq: %d s3c2410_udc_done.\n", IRQ_USBD);

	/* Restore old index */
	FUNC8(idx, S3C2410_UDC_INDEX_REG);

	FUNC4(&dev->lock, flags);

	return IRQ_HANDLED;
}