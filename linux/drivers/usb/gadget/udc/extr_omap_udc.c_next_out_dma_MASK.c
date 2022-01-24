#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int dma; } ;
struct omap_req {unsigned int dma_bytes; TYPE_2__ req; } ;
struct TYPE_3__ {unsigned int maxpacket; } ;
struct omap_ep {int bEndpointAddress; int /*<<< orphan*/  lch; int /*<<< orphan*/  dma_channel; int /*<<< orphan*/  dma_counter; TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DMA_AMODE_POST_INC ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S16 ; 
 int /*<<< orphan*/  OMAP_DMA_PORT_EMIFF ; 
 int /*<<< orphan*/  OMAP_DMA_SYNC_ELEMENT ; 
 int /*<<< orphan*/  UDC_CTRL ; 
 int /*<<< orphan*/  UDC_DMA_IRQ_EN ; 
 int /*<<< orphan*/  UDC_EP_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int UDC_RXN_STOP ; 
 scalar_t__ UDC_RXN_TC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UDC_SET_FIFO_EN ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct omap_ep *ep, struct omap_req *req)
{
	unsigned packets = req->req.length - req->req.actual;
	int dma_trigger = 0;
	u16 w;

	/* set up this DMA transfer, enable the fifo, start */
	packets /= ep->ep.maxpacket;
	packets = FUNC2(packets, (unsigned)UDC_RXN_TC + 1);
	req->dma_bytes = packets * ep->ep.maxpacket;
	FUNC6(ep->lch, OMAP_DMA_DATA_TYPE_S16,
			ep->ep.maxpacket >> 1, packets,
			OMAP_DMA_SYNC_ELEMENT,
			dma_trigger, 0);
	FUNC5(ep->lch, OMAP_DMA_PORT_EMIFF,
		OMAP_DMA_AMODE_POST_INC, req->req.dma + req->req.actual,
		0, 0);
	ep->dma_counter = FUNC3(ep->lch);

	FUNC8(UDC_RXN_STOP | (packets - 1), FUNC0(ep->dma_channel));
	w = FUNC4(UDC_DMA_IRQ_EN);
	w |= FUNC1(ep->dma_channel);
	FUNC8(w, UDC_DMA_IRQ_EN);
	FUNC8(ep->bEndpointAddress & 0xf, UDC_EP_NUM);
	FUNC8(UDC_SET_FIFO_EN, UDC_CTRL);

	FUNC7(ep->lch);
}