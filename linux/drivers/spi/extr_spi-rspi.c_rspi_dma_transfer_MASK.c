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
typedef  int /*<<< orphan*/  u8 ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct rspi_data {unsigned int tx_irq; unsigned int rx_irq; TYPE_1__* ctlr; scalar_t__ dma_callbacked; int /*<<< orphan*/  wait; } ;
struct dma_async_tx_descriptor {struct rspi_data* callback_param; int /*<<< orphan*/ * callback; } ;
typedef  int dma_cookie_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  SPCR_SPRIE ; 
 int /*<<< orphan*/  SPCR_SPTIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct dma_async_tx_descriptor* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 void* rspi_dma_complete ; 
 int /*<<< orphan*/  FUNC12 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct rspi_data *rspi, struct sg_table *tx,
			     struct sg_table *rx)
{
	struct dma_async_tx_descriptor *desc_tx = NULL, *desc_rx = NULL;
	u8 irq_mask = 0;
	unsigned int other_irq = 0;
	dma_cookie_t cookie;
	int ret;

	/* First prepare and submit the DMA request(s), as this may fail */
	if (rx) {
		desc_rx = FUNC6(rspi->ctlr->dma_rx, rx->sgl,
					rx->nents, DMA_DEV_TO_MEM,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!desc_rx) {
			ret = -EAGAIN;
			goto no_dma_rx;
		}

		desc_rx->callback = rspi_dma_complete;
		desc_rx->callback_param = rspi;
		cookie = FUNC7(desc_rx);
		if (FUNC5(cookie)) {
			ret = cookie;
			goto no_dma_rx;
		}

		irq_mask |= SPCR_SPRIE;
	}

	if (tx) {
		desc_tx = FUNC6(rspi->ctlr->dma_tx, tx->sgl,
					tx->nents, DMA_MEM_TO_DEV,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!desc_tx) {
			ret = -EAGAIN;
			goto no_dma_tx;
		}

		if (rx) {
			/* No callback */
			desc_tx->callback = NULL;
		} else {
			desc_tx->callback = rspi_dma_complete;
			desc_tx->callback_param = rspi;
		}
		cookie = FUNC7(desc_tx);
		if (FUNC5(cookie)) {
			ret = cookie;
			goto no_dma_tx;
		}

		irq_mask |= SPCR_SPTIE;
	}

	/*
	 * DMAC needs SPxIE, but if SPxIE is set, the IRQ routine will be
	 * called. So, this driver disables the IRQ while DMA transfer.
	 */
	if (tx)
		FUNC3(other_irq = rspi->tx_irq);
	if (rx && rspi->rx_irq != other_irq)
		FUNC3(rspi->rx_irq);

	FUNC12(rspi, irq_mask);
	rspi->dma_callbacked = 0;

	/* Now start DMA */
	if (rx)
		FUNC4(rspi->ctlr->dma_rx);
	if (tx)
		FUNC4(rspi->ctlr->dma_tx);

	ret = FUNC13(rspi->wait,
					       rspi->dma_callbacked, HZ);
	if (ret > 0 && rspi->dma_callbacked) {
		ret = 0;
	} else {
		if (!ret) {
			FUNC1(&rspi->ctlr->dev, "DMA timeout\n");
			ret = -ETIMEDOUT;
		}
		if (tx)
			FUNC8(rspi->ctlr->dma_tx);
		if (rx)
			FUNC8(rspi->ctlr->dma_rx);
	}

	FUNC11(rspi, irq_mask);

	if (tx)
		FUNC9(rspi->tx_irq);
	if (rx && rspi->rx_irq != other_irq)
		FUNC9(rspi->rx_irq);

	return ret;

no_dma_tx:
	if (rx)
		FUNC8(rspi->ctlr->dma_rx);
no_dma_rx:
	if (ret == -EAGAIN) {
		FUNC10("%s %s: DMA not available, falling back to PIO\n",
			     FUNC0(&rspi->ctlr->dev),
			     FUNC2(&rspi->ctlr->dev));
	}
	return ret;
}