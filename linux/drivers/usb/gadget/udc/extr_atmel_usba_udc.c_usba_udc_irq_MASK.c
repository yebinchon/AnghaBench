#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {scalar_t__ speed; } ;
struct usba_udc {int suspended; int bias_pulse_needed; int num_ep; int configured_ep; int /*<<< orphan*/  lock; TYPE_2__* pdev; struct usba_ep* usba_ep; TYPE_3__ gadget; TYPE_4__* driver; } ;
struct TYPE_7__ {int /*<<< orphan*/ * desc; } ;
struct usba_ep {int ept_cfg; int /*<<< orphan*/  state; TYPE_1__ ep; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* resume ) (TYPE_3__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_3__*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BK_NUMBER ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CTL_ENB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_BUS ; 
 int /*<<< orphan*/  DBG_INT ; 
 int /*<<< orphan*/  DMA_INT ; 
 int EP0_EPT_SIZE ; 
 int /*<<< orphan*/  EPT_INT ; 
 int /*<<< orphan*/  EPT_SIZE ; 
 int /*<<< orphan*/  EPT_TYPE ; 
 int /*<<< orphan*/  INT_CLR ; 
 int /*<<< orphan*/  INT_STA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int USBA_BK_NUMBER_ONE ; 
 int USBA_DET_SUSPEND ; 
 int USBA_END_OF_RESET ; 
 int USBA_END_OF_RESUME ; 
 int USBA_EPT_ENABLE ; 
 int USBA_EPT_MAPPED ; 
 int USBA_EPT_TYPE_CONTROL ; 
 int USBA_HIGH_SPEED ; 
 int USBA_NR_DMAS ; 
 int USBA_RX_SETUP ; 
 int USBA_WAKE_UP ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (struct usba_ep*) ; 
 scalar_t__ fifo_mode ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC6 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC10 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct usba_udc*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC17 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  usba_ep0_desc ; 
 int /*<<< orphan*/  FUNC18 (struct usba_udc*,struct usba_ep*) ; 
 int FUNC19 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct usba_ep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct usba_udc*,int) ; 
 int FUNC22 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC23 (struct usba_udc*,int) ; 
 int FUNC24 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct usba_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC26(int irq, void *devid)
{
	struct usba_udc *udc = devid;
	u32 status, int_enb;
	u32 dma_status;
	u32 ep_status;

	FUNC7(&udc->lock);

	int_enb = FUNC22(udc);
	status = FUNC24(udc, INT_STA) & (int_enb | USBA_HIGH_SPEED);
	FUNC0(DBG_INT, "irq, status=%#08x\n", status);

	if (status & USBA_DET_SUSPEND) {
		FUNC25(udc, INT_CLR, USBA_DET_SUSPEND|USBA_WAKE_UP);
		FUNC23(udc, USBA_WAKE_UP);
		FUNC21(udc, USBA_DET_SUSPEND);
		udc->suspended = true;
		FUNC13(udc, 0);
		udc->bias_pulse_needed = true;
		FUNC10(udc);
		FUNC0(DBG_BUS, "Suspend detected\n");
		if (udc->gadget.speed != USB_SPEED_UNKNOWN
				&& udc->driver && udc->driver->suspend) {
			FUNC8(&udc->lock);
			udc->driver->suspend(&udc->gadget);
			FUNC7(&udc->lock);
		}
	}

	if (status & USBA_WAKE_UP) {
		FUNC9(udc);
		FUNC13(udc, 1);
		FUNC25(udc, INT_CLR, USBA_WAKE_UP);
		FUNC0(DBG_BUS, "Wake Up CPU detected\n");
	}

	if (status & USBA_END_OF_RESUME) {
		udc->suspended = false;
		FUNC25(udc, INT_CLR, USBA_END_OF_RESUME);
		FUNC21(udc, USBA_WAKE_UP);
		FUNC23(udc, USBA_DET_SUSPEND);
		FUNC5(udc);
		FUNC0(DBG_BUS, "Resume detected\n");
		if (udc->gadget.speed != USB_SPEED_UNKNOWN
				&& udc->driver && udc->driver->resume) {
			FUNC8(&udc->lock);
			udc->driver->resume(&udc->gadget);
			FUNC7(&udc->lock);
		}
	}

	dma_status = FUNC2(DMA_INT, status);
	if (dma_status) {
		int i;

		FUNC23(udc, USBA_DET_SUSPEND);

		for (i = 1; i <= USBA_NR_DMAS; i++)
			if (dma_status & (1 << i))
				FUNC17(udc, &udc->usba_ep[i]);
	}

	ep_status = FUNC2(EPT_INT, status);
	if (ep_status) {
		int i;

		FUNC23(udc, USBA_DET_SUSPEND);

		for (i = 0; i < udc->num_ep; i++)
			if (ep_status & (1 << i)) {
				if (FUNC4(&udc->usba_ep[i]))
					FUNC16(udc, &udc->usba_ep[i]);
				else
					FUNC18(udc, &udc->usba_ep[i]);
			}
	}

	if (status & USBA_END_OF_RESET) {
		struct usba_ep *ep0, *ep;
		int i, n;

		FUNC25(udc, INT_CLR,
			USBA_END_OF_RESET|USBA_END_OF_RESUME
			|USBA_DET_SUSPEND|USBA_WAKE_UP);
		FUNC5(udc);
		FUNC6(udc);

		if (udc->gadget.speed != USB_SPEED_UNKNOWN && udc->driver) {
			udc->gadget.speed = USB_SPEED_UNKNOWN;
			FUNC8(&udc->lock);
			FUNC14(&udc->gadget, udc->driver);
			FUNC7(&udc->lock);
		}

		if (status & USBA_HIGH_SPEED)
			udc->gadget.speed = USB_SPEED_HIGH;
		else
			udc->gadget.speed = USB_SPEED_FULL;
		FUNC0(DBG_BUS, "%s bus reset detected\n",
		    FUNC15(udc->gadget.speed));

		ep0 = &udc->usba_ep[0];
		ep0->ep.desc = &usba_ep0_desc;
		ep0->state = WAIT_FOR_SETUP;
		FUNC20(ep0, CFG,
				(FUNC1(EPT_SIZE, EP0_EPT_SIZE)
				| FUNC1(EPT_TYPE, USBA_EPT_TYPE_CONTROL)
				| FUNC1(BK_NUMBER, USBA_BK_NUMBER_ONE)));
		FUNC20(ep0, CTL_ENB,
				USBA_EPT_ENABLE | USBA_RX_SETUP);

		/* If we get reset while suspended... */
		udc->suspended = false;
		FUNC21(udc, USBA_WAKE_UP);

		FUNC23(udc, FUNC1(EPT_INT, 1) |
				      USBA_DET_SUSPEND | USBA_END_OF_RESUME);

		/*
		 * Unclear why we hit this irregularly, e.g. in usbtest,
		 * but it's clearly harmless...
		 */
		if (!(FUNC19(ep0, CFG) & USBA_EPT_MAPPED))
			FUNC3(&udc->pdev->dev,
				"ODD: EP0 configuration is invalid!\n");

		/* Preallocate other endpoints */
		n = fifo_mode ? udc->num_ep : udc->configured_ep;
		for (i = 1; i < n; i++) {
			ep = &udc->usba_ep[i];
			FUNC20(ep, CFG, ep->ept_cfg);
			if (!(FUNC19(ep, CFG) & USBA_EPT_MAPPED))
				FUNC3(&udc->pdev->dev,
					"ODD: EP%d configuration is invalid!\n", i);
		}
	}

	FUNC8(&udc->lock);

	return IRQ_HANDLED;
}