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
typedef  int u32 ;
struct lpc32xx_udc {int udca_p_base; scalar_t__ dev_status; int /*<<< orphan*/  udp_baseaddr; struct lpc32xx_ep* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  maxpacket; } ;
struct lpc32xx_ep {TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_DEV_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_CON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int USBD_DEV_STAT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int USBD_EOT_INT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int USBD_EP_FAST ; 
 int USBD_EP_SLOW ; 
 int USBD_ERR_INT ; 
 int USBD_SYS_ERR_INT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpc32xx_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct lpc32xx_udc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct lpc32xx_udc *udc)
{
	u32 i;
	struct lpc32xx_ep *ep = &udc->ep[0];

	/* Start with known state */
	FUNC11(udc);

	/* Enable device */
	FUNC12(udc, CMD_SET_DEV_STAT, FUNC0(DEV_CON));

	/* EP interrupts on high priority, FRAME interrupt on low priority */
	FUNC16(USBD_EP_FAST, FUNC2(udc->udp_baseaddr));
	FUNC16(0xFFFF, FUNC4(udc->udp_baseaddr));

	/* Clear any pending device interrupts */
	FUNC16(0x3FF, FUNC1(udc->udp_baseaddr));

	/* Setup UDCA - not yet used (DMA) */
	FUNC16(udc->udca_p_base, FUNC5(udc->udp_baseaddr));

	/* Only enable EP0 in and out for now, EP0 only works in FIFO mode */
	for (i = 0; i <= 1; i++) {
		FUNC13(udc, i, ep->ep.maxpacket);
		FUNC8(udc, i);
		FUNC14(udc, i);
		FUNC10(udc, i);
		FUNC9(udc, i);
	}

	/* Device interrupt setup */
	FUNC6(udc, (USBD_ERR_INT | USBD_DEV_STAT | USBD_EP_SLOW |
			       USBD_EP_FAST));
	FUNC7(udc, (USBD_ERR_INT | USBD_DEV_STAT | USBD_EP_SLOW |
				USBD_EP_FAST));

	/* Set device address to 0 - called twice to force a latch in the USB
	   engine without the need of a setup packet status closure */
	FUNC15(udc, 0);
	FUNC15(udc, 0);

	/* Enable master DMA interrupts */
	FUNC16((USBD_SYS_ERR_INT | USBD_EOT_INT),
		     FUNC3(udc->udp_baseaddr));

	udc->dev_status = 0;
}