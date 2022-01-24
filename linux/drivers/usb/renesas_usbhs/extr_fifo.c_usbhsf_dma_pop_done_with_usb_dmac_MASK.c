#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int /*<<< orphan*/  actual; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int /*<<< orphan*/  fifo; } ;
struct usbhs_fifo {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRDYSTS ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pkt*,struct dma_chan*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 struct usbhs_fifo* FUNC3 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC6 (struct usbhs_fifo*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 int FUNC10 (struct usbhs_priv*,struct usbhs_fifo*) ; 
 int /*<<< orphan*/  FUNC11 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usbhs_pkt *pkt,
					     int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC4(pipe);
	struct usbhs_fifo *fifo = FUNC3(pipe);
	struct dma_chan *chan = FUNC6(fifo, pkt);
	int rcv_len;

	/*
	 * Since the driver disables rx_irq in DMA mode, the interrupt handler
	 * cannot the BRDYSTS. So, the function clears it here because the
	 * driver may use PIO mode next time.
	 */
	FUNC5(priv, BRDYSTS, FUNC1(pipe));

	rcv_len = FUNC10(priv, fifo);
	FUNC9(pipe, fifo);
	pkt->actual = FUNC0(pkt, chan, rcv_len);

	FUNC2(pipe, 0);
	FUNC7(pipe, fifo);
	FUNC8(pkt);
	FUNC11(pipe, pipe->fifo);

	/* The driver can assume the rx transaction is always "done" */
	*is_done = 1;

	return 0;
}