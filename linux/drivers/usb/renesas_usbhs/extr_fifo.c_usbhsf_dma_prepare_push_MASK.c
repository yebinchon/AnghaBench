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
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int length; int actual; int buf; int trans; TYPE_1__* handler; int /*<<< orphan*/  work; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int USBHS_USB_DMAC_XFER_SIZE ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_ISOC ; 
 int /*<<< orphan*/  has_usb_dmac ; 
 int /*<<< orphan*/  pio_dma_border ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_push_handler ; 
 int FUNC3 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC5 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC6 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC7 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pkt*) ; 
 int FUNC10 (struct usbhs_pipe*,struct usbhs_fifo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC12 (struct usbhs_priv*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC13 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfer_work ; 

__attribute__((used)) static int FUNC14(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC6(pipe);
	struct usbhs_fifo *fifo;
	int len = pkt->length - pkt->actual;
	int ret;
	uintptr_t align_mask;

	if (FUNC4(pipe))
		return 0;

	/* use PIO if packet is less than pio_dma_border or pipe is DCP */
	if ((len < FUNC3(priv, pio_dma_border)) ||
	    FUNC7(pipe, USB_ENDPOINT_XFER_ISOC))
		goto usbhsf_pio_prepare_push;

	/* check data length if this driver don't use USB-DMAC */
	if (!FUNC3(priv, has_usb_dmac) && len & 0x7)
		goto usbhsf_pio_prepare_push;

	/* check buffer alignment */
	align_mask = FUNC3(priv, has_usb_dmac) ?
					USBHS_USB_DMAC_XFER_SIZE - 1 : 0x7;
	if ((uintptr_t)(pkt->buf + pkt->actual) & align_mask)
		goto usbhsf_pio_prepare_push;

	/* return at this time if the pipe is running */
	if (FUNC5(pipe))
		return 0;

	/* get enable DMA fifo */
	fifo = FUNC12(priv, pkt);
	if (!fifo)
		goto usbhsf_pio_prepare_push;

	ret = FUNC10(pipe, fifo, 0);
	if (ret < 0)
		goto usbhsf_pio_prepare_push;

	if (FUNC8(pkt) < 0)
		goto usbhsf_pio_prepare_push_unselect;

	pkt->trans = len;

	FUNC13(pipe, 0);
	/* FIXME: Workaound for usb dmac that driver can be used in atomic */
	if (FUNC3(priv, has_usb_dmac)) {
		FUNC9(pkt);
	} else {
		FUNC0(&pkt->work, xfer_work);
		FUNC1(&pkt->work);
	}

	return 0;

usbhsf_pio_prepare_push_unselect:
	FUNC11(pipe, fifo);
usbhsf_pio_prepare_push:
	/*
	 * change handler to PIO
	 */
	pkt->handler = &usbhs_fifo_pio_push_handler;

	return pkt->handler->prepare(pkt, is_done);
}