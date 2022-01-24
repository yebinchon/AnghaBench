#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct spi_controller {struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {TYPE_3__* device; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct spi_controller* callback_param; int /*<<< orphan*/  callback; } ;
struct at91_usart_spi {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* device_issue_pending ) (struct dma_chan*) ;} ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  US_IR_RXRDY ; 
 int /*<<< orphan*/  FUNC0 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_usart_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_callback ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct at91_usart_spi* FUNC4 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC9(struct spi_controller *ctlr,
				       struct spi_transfer *xfer)
{
	struct at91_usart_spi *aus = FUNC4(ctlr);
	struct dma_chan	 *rxchan = ctlr->dma_rx;
	struct dma_chan *txchan = ctlr->dma_tx;
	struct dma_async_tx_descriptor *rxdesc;
	struct dma_async_tx_descriptor *txdesc;
	dma_cookie_t cookie;

	/* Disable RX interrupt */
	FUNC1(aus, IDR, US_IR_RXRDY);

	rxdesc = FUNC3(rxchan,
					 xfer->rx_sg.sgl,
					 xfer->rx_sg.nents,
					 DMA_DEV_TO_MEM,
					 DMA_PREP_INTERRUPT |
					 DMA_CTRL_ACK);
	if (!rxdesc)
		goto at91_usart_spi_err_dma;

	txdesc = FUNC3(txchan,
					 xfer->tx_sg.sgl,
					 xfer->tx_sg.nents,
					 DMA_MEM_TO_DEV,
					 DMA_PREP_INTERRUPT |
					 DMA_CTRL_ACK);
	if (!txdesc)
		goto at91_usart_spi_err_dma;

	rxdesc->callback = dma_callback;
	rxdesc->callback_param = ctlr;

	cookie = rxdesc->tx_submit(rxdesc);
	if (FUNC2(cookie))
		goto at91_usart_spi_err_dma;

	cookie = txdesc->tx_submit(txdesc);
	if (FUNC2(cookie))
		goto at91_usart_spi_err_dma;

	rxchan->device->device_issue_pending(rxchan);
	txchan->device->device_issue_pending(txchan);

	return 0;

at91_usart_spi_err_dma:
	/* Enable RX interrupt if something fails and fallback to PIO */
	FUNC1(aus, IER, US_IR_RXRDY);
	FUNC0(ctlr);

	return -ENOMEM;
}