#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_6__ {struct device* dev; TYPE_1__* state; } ;
struct lpuart_port {int dma_tx_in_progress; int dma_tx_nents; int /*<<< orphan*/  dma_tx_chan; TYPE_3__* dma_tx_desc; int /*<<< orphan*/  dma_tx_cookie; int /*<<< orphan*/  dma_tx_bytes; TYPE_2__ port; struct scatterlist* tx_sgl; } ;
struct device {int dummy; } ;
struct circ_buf {scalar_t__ tail; scalar_t__ head; scalar_t__ buf; } ;
struct TYPE_7__ {struct lpuart_port* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  lpuart_dma_tx_complete ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct circ_buf*) ; 

__attribute__((used)) static void FUNC10(struct lpuart_port *sport)
{
	struct circ_buf *xmit = &sport->port.state->xmit;
	struct scatterlist *sgl = sport->tx_sgl;
	struct device *dev = sport->port.dev;
	int ret;

	if (sport->dma_tx_in_progress)
		return;

	sport->dma_tx_bytes = FUNC9(xmit);

	if (xmit->tail < xmit->head || xmit->head == 0) {
		sport->dma_tx_nents = 1;
		FUNC6(sgl, xmit->buf + xmit->tail, sport->dma_tx_bytes);
	} else {
		sport->dma_tx_nents = 2;
		FUNC7(sgl, 2);
		FUNC8(sgl, xmit->buf + xmit->tail,
				UART_XMIT_SIZE - xmit->tail);
		FUNC8(sgl + 1, xmit->buf, xmit->head);
	}

	ret = FUNC2(dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
	if (!ret) {
		FUNC0(dev, "DMA mapping error for TX.\n");
		return;
	}

	sport->dma_tx_desc = FUNC4(sport->dma_tx_chan, sgl,
					sport->dma_tx_nents,
					DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
	if (!sport->dma_tx_desc) {
		FUNC3(dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
		FUNC0(dev, "Cannot prepare TX slave DMA!\n");
		return;
	}

	sport->dma_tx_desc->callback = lpuart_dma_tx_complete;
	sport->dma_tx_desc->callback_param = sport;
	sport->dma_tx_in_progress = true;
	sport->dma_tx_cookie = FUNC5(sport->dma_tx_desc);
	FUNC1(sport->dma_tx_chan);
}