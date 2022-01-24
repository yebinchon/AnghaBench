#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sh_msiof_spi_priv {int slave_aborted; TYPE_3__* ctlr; int /*<<< orphan*/  rx_dma_addr; TYPE_1__* pdev; int /*<<< orphan*/  done; int /*<<< orphan*/  done_txdma; int /*<<< orphan*/  tx_dma_addr; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; void* callback; } ;
typedef  int dma_cookie_t ;
struct TYPE_10__ {TYPE_2__* device; } ;
struct TYPE_9__ {TYPE_4__* dma_rx; TYPE_4__* dma_tx; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FCTR ; 
 int FCTR_RFWM_1 ; 
 int FCTR_TFWM_1 ; 
 int /*<<< orphan*/  IER ; 
 int IER_RDMAE ; 
 int IER_RDREQE ; 
 int IER_TDMAE ; 
 int IER_TDREQE ; 
 int IER_TEOFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* sh_msiof_dma_complete ; 
 int /*<<< orphan*/  FUNC9 (struct sh_msiof_spi_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_msiof_spi_priv*,void const*,void*,int,unsigned int) ; 
 int FUNC11 (struct sh_msiof_spi_priv*,void*) ; 
 int FUNC12 (struct sh_msiof_spi_priv*,void*) ; 
 int FUNC13 (struct sh_msiof_spi_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sh_msiof_spi_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct sh_msiof_spi_priv *p, const void *tx,
			     void *rx, unsigned int len)
{
	u32 ier_bits = 0;
	struct dma_async_tx_descriptor *desc_tx = NULL, *desc_rx = NULL;
	dma_cookie_t cookie;
	int ret;

	/* First prepare and submit the DMA request(s), as this may fail */
	if (rx) {
		ier_bits |= IER_RDREQE | IER_RDMAE;
		desc_rx = FUNC5(p->ctlr->dma_rx,
					p->rx_dma_addr, len, DMA_DEV_TO_MEM,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!desc_rx)
			return -EAGAIN;

		desc_rx->callback = sh_msiof_dma_complete;
		desc_rx->callback_param = &p->done;
		cookie = FUNC6(desc_rx);
		if (FUNC2(cookie))
			return cookie;
	}

	if (tx) {
		ier_bits |= IER_TDREQE | IER_TDMAE;
		FUNC4(p->ctlr->dma_tx->device->dev,
					   p->tx_dma_addr, len, DMA_TO_DEVICE);
		desc_tx = FUNC5(p->ctlr->dma_tx,
					p->tx_dma_addr, len, DMA_MEM_TO_DEV,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!desc_tx) {
			ret = -EAGAIN;
			goto no_dma_tx;
		}

		desc_tx->callback = sh_msiof_dma_complete;
		desc_tx->callback_param = &p->done_txdma;
		cookie = FUNC6(desc_tx);
		if (FUNC2(cookie)) {
			ret = cookie;
			goto no_dma_tx;
		}
	}

	/* 1 stage FIFO watermarks for DMA */
	FUNC14(p, FCTR, FCTR_TFWM_1 | FCTR_RFWM_1);

	/* setup msiof transfer mode registers (32-bit words) */
	FUNC10(p, tx, rx, 32, len / 4);

	FUNC14(p, IER, ier_bits);

	FUNC8(&p->done);
	if (tx)
		FUNC8(&p->done_txdma);
	p->slave_aborted = false;

	/* Now start DMA */
	if (rx)
		FUNC1(p->ctlr->dma_rx);
	if (tx)
		FUNC1(p->ctlr->dma_tx);

	ret = FUNC11(p, rx);
	if (ret) {
		FUNC0(&p->pdev->dev, "failed to start hardware\n");
		goto stop_dma;
	}

	if (tx) {
		/* wait for tx DMA completion */
		ret = FUNC13(p, &p->done_txdma);
		if (ret)
			goto stop_reset;
	}

	if (rx) {
		/* wait for rx DMA completion */
		ret = FUNC13(p, &p->done);
		if (ret)
			goto stop_reset;

		FUNC14(p, IER, 0);
	} else {
		/* wait for tx fifo to be emptied */
		FUNC14(p, IER, IER_TEOFE);
		ret = FUNC13(p, &p->done);
		if (ret)
			goto stop_reset;
	}

	/* clear status bits */
	FUNC9(p);

	ret = FUNC12(p, rx);
	if (ret) {
		FUNC0(&p->pdev->dev, "failed to shut down hardware\n");
		return ret;
	}

	if (rx)
		FUNC3(p->ctlr->dma_rx->device->dev,
					p->rx_dma_addr, len, DMA_FROM_DEVICE);

	return 0;

stop_reset:
	FUNC9(p);
	FUNC12(p, rx);
stop_dma:
	if (tx)
		FUNC7(p->ctlr->dma_tx);
no_dma_tx:
	if (rx)
		FUNC7(p->ctlr->dma_rx);
	FUNC14(p, IER, 0);
	return ret;
}