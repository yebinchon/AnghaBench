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
struct usbhs_pkt {int trans; TYPE_1__* handler; int /*<<< orphan*/  work; scalar_t__ actual; scalar_t__ length; scalar_t__ buf; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* try_run ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  pio_dma_border ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_pop_handler ; 
 int FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC6 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC7 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC8 (struct usbhs_pkt*) ; 
 int FUNC9 (struct usbhs_priv*,struct usbhs_fifo*) ; 
 int FUNC10 (struct usbhs_priv*,struct usbhs_fifo*) ; 
 int FUNC11 (struct usbhs_pipe*,struct usbhs_fifo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC13 (struct usbhs_priv*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC14 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfer_work ; 

__attribute__((used)) static int FUNC15(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC7(pipe);
	struct usbhs_fifo *fifo;
	int len, ret;

	if (FUNC5(pipe))
		return 0;

	if (FUNC6(pipe))
		goto usbhsf_pio_prepare_pop;

	/* get enable DMA fifo */
	fifo = FUNC13(priv, pkt);
	if (!fifo)
		goto usbhsf_pio_prepare_pop;

	if ((uintptr_t)(pkt->buf + pkt->actual) & 0x7) /* 8byte alignment */
		goto usbhsf_pio_prepare_pop;

	ret = FUNC11(pipe, fifo, 0);
	if (ret < 0)
		goto usbhsf_pio_prepare_pop;

	/* use PIO if packet is less than pio_dma_border */
	len = FUNC10(priv, fifo);
	len = FUNC1(pkt->length - pkt->actual, len);
	if (len & 0x7) /* 8byte alignment */
		goto usbhsf_pio_prepare_pop_unselect;

	if (len < FUNC4(priv, pio_dma_border))
		goto usbhsf_pio_prepare_pop_unselect;

	ret = FUNC9(priv, fifo);
	if (ret < 0)
		goto usbhsf_pio_prepare_pop_unselect;

	if (FUNC8(pkt) < 0)
		goto usbhsf_pio_prepare_pop_unselect;

	/* DMA */

	/*
	 * usbhs_fifo_dma_pop_handler :: prepare
	 * enabled irq to come here.
	 * but it is no longer needed for DMA. disable it.
	 */
	FUNC14(pipe, 0);

	pkt->trans = len;

	FUNC0(&pkt->work, xfer_work);
	FUNC2(&pkt->work);

	return 0;

usbhsf_pio_prepare_pop_unselect:
	FUNC12(pipe, fifo);
usbhsf_pio_prepare_pop:

	/*
	 * change handler to PIO
	 */
	pkt->handler = &usbhs_fifo_pio_pop_handler;

	return pkt->handler->try_run(pkt, is_done);
}