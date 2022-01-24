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
struct usbhs_pkt {int /*<<< orphan*/  trans; int /*<<< orphan*/  zero; int /*<<< orphan*/  length; int /*<<< orphan*/  cookie; scalar_t__ actual; scalar_t__ dma; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int /*<<< orphan*/  name; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct usbhs_pipe* callback_param; int /*<<< orphan*/  callback; } ;
struct device {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int DMA_DEV_TO_MEM ; 
 int DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pipe*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 struct usbhs_fifo* FUNC10 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC11 (struct usbhs_pipe*) ; 
 struct device* FUNC12 (struct usbhs_priv*) ; 
 struct dma_chan* FUNC13 (struct usbhs_fifo*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  usbhsf_dma_complete ; 
 int /*<<< orphan*/  FUNC14 (struct usbhs_pipe*,struct usbhs_fifo*) ; 

__attribute__((used)) static void FUNC15(struct usbhs_pkt *pkt)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_fifo *fifo;
	struct usbhs_priv *priv = FUNC11(pipe);
	struct dma_async_tx_descriptor *desc;
	struct dma_chan *chan;
	struct device *dev = FUNC12(priv);
	enum dma_transfer_direction dir;

	fifo = FUNC10(pipe);
	if (!fifo)
		return;

	chan = FUNC13(fifo, pkt);
	dir = FUNC6(pipe) ? DMA_DEV_TO_MEM : DMA_MEM_TO_DEV;

	desc = FUNC3(chan, pkt->dma + pkt->actual,
					pkt->trans, dir,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc)
		return;

	desc->callback		= usbhsf_dma_complete;
	desc->callback_param	= pipe;

	pkt->cookie = FUNC4(desc);
	if (pkt->cookie < 0) {
		FUNC1(dev, "Failed to submit dma descriptor\n");
		return;
	}

	FUNC0(dev, "  %s %d (%d/ %d)\n",
		fifo->name, FUNC7(pipe), pkt->length, pkt->zero);

	FUNC8(pipe, 1);
	FUNC9(pipe, pkt->trans);
	FUNC2(chan);
	FUNC14(pipe, fifo);
	FUNC5(pipe);
}