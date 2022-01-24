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
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_3__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct spi_master {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct pic32_spi {struct spi_master* master; } ;
struct dma_async_tx_descriptor {struct pic32_spi* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic32_spi_dma_rx_notify ; 

__attribute__((used)) static int FUNC5(struct pic32_spi *pic32s,
				  struct spi_transfer *xfer)
{
	struct spi_master *master = pic32s->master;
	struct dma_async_tx_descriptor *desc_rx;
	struct dma_async_tx_descriptor *desc_tx;
	dma_cookie_t cookie;
	int ret;

	if (!master->dma_rx || !master->dma_tx)
		return -ENODEV;

	desc_rx = FUNC2(master->dma_rx,
					  xfer->rx_sg.sgl,
					  xfer->rx_sg.nents,
					  DMA_DEV_TO_MEM,
					  DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_rx) {
		ret = -EINVAL;
		goto err_dma;
	}

	desc_tx = FUNC2(master->dma_tx,
					  xfer->tx_sg.sgl,
					  xfer->tx_sg.nents,
					  DMA_MEM_TO_DEV,
					  DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_tx) {
		ret = -EINVAL;
		goto err_dma;
	}

	/* Put callback on the RX transfer, that should finish last */
	desc_rx->callback = pic32_spi_dma_rx_notify;
	desc_rx->callback_param = pic32s;

	cookie = FUNC3(desc_rx);
	ret = FUNC1(cookie);
	if (ret)
		goto err_dma;

	cookie = FUNC3(desc_tx);
	ret = FUNC1(cookie);
	if (ret)
		goto err_dma_tx;

	FUNC0(master->dma_rx);
	FUNC0(master->dma_tx);

	return 0;

err_dma_tx:
	FUNC4(master->dma_rx);
err_dma:
	return ret;
}