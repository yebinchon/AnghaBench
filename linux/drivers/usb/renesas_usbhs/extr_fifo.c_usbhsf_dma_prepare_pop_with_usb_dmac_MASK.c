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
struct usbhs_pkt {scalar_t__ length; scalar_t__ trans; TYPE_1__* handler; scalar_t__ buf; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int USBHS_USB_DMAC_XFER_SIZE ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_ISOC ; 
 int /*<<< orphan*/  pio_dma_border ; 
 int FUNC0 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_pop_handler ; 
 scalar_t__ FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int) ; 
 scalar_t__ FUNC3 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC4 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC5 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC6 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pkt*) ; 
 int FUNC9 (struct usbhs_pipe*,struct usbhs_fifo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC11 (struct usbhs_priv*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC12 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct usbhs_pkt *pkt,
						int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC5(pipe);
	struct usbhs_fifo *fifo;
	int ret;

	if (FUNC3(pipe))
		return 0;

	/* use PIO if packet is less than pio_dma_border or pipe is DCP */
	if ((pkt->length < FUNC1(priv, pio_dma_border)) ||
	    FUNC6(pipe, USB_ENDPOINT_XFER_ISOC))
		goto usbhsf_pio_prepare_pop;

	fifo = FUNC11(priv, pkt);
	if (!fifo)
		goto usbhsf_pio_prepare_pop;

	if ((uintptr_t)pkt->buf & (USBHS_USB_DMAC_XFER_SIZE - 1))
		goto usbhsf_pio_prepare_pop;

	/* return at this time if the pipe is running */
	if (FUNC4(pipe))
		return 0;

	FUNC2(pipe, 1);

	ret = FUNC9(pipe, fifo, 0);
	if (ret < 0)
		goto usbhsf_pio_prepare_pop;

	if (FUNC7(pkt) < 0)
		goto usbhsf_pio_prepare_pop_unselect;

	/* DMA */

	/*
	 * usbhs_fifo_dma_pop_handler :: prepare
	 * enabled irq to come here.
	 * but it is no longer needed for DMA. disable it.
	 */
	FUNC12(pipe, 0);

	pkt->trans = pkt->length;

	FUNC8(pkt);

	return 0;

usbhsf_pio_prepare_pop_unselect:
	FUNC10(pipe, fifo);
usbhsf_pio_prepare_pop:

	/*
	 * change handler to PIO
	 */
	pkt->handler = &usbhs_fifo_pio_pop_handler;
	FUNC2(pipe, 0);

	return pkt->handler->prepare(pkt, is_done);
}