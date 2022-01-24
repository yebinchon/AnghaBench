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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {struct device* dev; TYPE_1__* state; } ;
struct imx_port {int dma_is_txing; int dma_tx_nents; int /*<<< orphan*/  tx_bytes; TYPE_2__ port; struct dma_chan* dma_chan_tx; struct scatterlist* tx_sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct imx_port* callback_param; int /*<<< orphan*/  callback; } ;
struct device {int dummy; } ;
struct circ_buf {scalar_t__ tail; scalar_t__ head; scalar_t__ buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ UART_XMIT_SIZE ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR1_TXDMAEN ; 
 int /*<<< orphan*/  UCR4 ; 
 int /*<<< orphan*/  UCR4_TCEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int FUNC3 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC5 (struct dma_chan*,struct scatterlist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  imx_uart_dma_tx_callback ; 
 int /*<<< orphan*/  FUNC7 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct imx_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct circ_buf*) ; 

__attribute__((used)) static void FUNC13(struct imx_port *sport)
{
	struct circ_buf *xmit = &sport->port.state->xmit;
	struct scatterlist *sgl = sport->tx_sgl;
	struct dma_async_tx_descriptor *desc;
	struct dma_chan	*chan = sport->dma_chan_tx;
	struct device *dev = sport->port.dev;
	u32 ucr1, ucr4;
	int ret;

	if (sport->dma_is_txing)
		return;

	ucr4 = FUNC7(sport, UCR4);
	ucr4 &= ~UCR4_TCEN;
	FUNC8(sport, ucr4, UCR4);

	sport->tx_bytes = FUNC12(xmit);

	if (xmit->tail < xmit->head) {
		sport->dma_tx_nents = 1;
		FUNC9(sgl, xmit->buf + xmit->tail, sport->tx_bytes);
	} else {
		sport->dma_tx_nents = 2;
		FUNC10(sgl, 2);
		FUNC11(sgl, xmit->buf + xmit->tail,
				UART_XMIT_SIZE - xmit->tail);
		FUNC11(sgl + 1, xmit->buf, xmit->head);
	}

	ret = FUNC3(dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
	if (ret == 0) {
		FUNC1(dev, "DMA mapping error for TX.\n");
		return;
	}
	desc = FUNC5(chan, sgl, sport->dma_tx_nents,
					DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
	if (!desc) {
		FUNC4(dev, sgl, sport->dma_tx_nents,
			     DMA_TO_DEVICE);
		FUNC1(dev, "We cannot prepare for the TX slave dma!\n");
		return;
	}
	desc->callback = imx_uart_dma_tx_callback;
	desc->callback_param = sport;

	FUNC0(dev, "TX: prepare to send %lu bytes by DMA.\n",
			FUNC12(xmit));

	ucr1 = FUNC7(sport, UCR1);
	ucr1 |= UCR1_TXDMAEN;
	FUNC8(sport, ucr1, UCR1);

	/* fire it */
	sport->dma_is_txing = 1;
	FUNC6(desc);
	FUNC2(chan);
	return;
}