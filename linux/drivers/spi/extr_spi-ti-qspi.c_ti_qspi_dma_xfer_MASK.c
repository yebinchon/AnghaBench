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
struct ti_qspi {int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer_complete; struct dma_chan* rx_chan; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct ti_qspi* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  ti_qspi_dma_callback ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ti_qspi *qspi, dma_addr_t dma_dst,
			    dma_addr_t dma_src, size_t len)
{
	struct dma_chan *chan = qspi->rx_chan;
	dma_cookie_t cookie;
	enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
	struct dma_async_tx_descriptor *tx;
	int ret;

	tx = FUNC3(chan, dma_dst, dma_src, len, flags);
	if (!tx) {
		FUNC0(qspi->dev, "device_prep_dma_memcpy error\n");
		return -EIO;
	}

	tx->callback = ti_qspi_dma_callback;
	tx->callback_param = qspi;
	cookie = tx->tx_submit(tx);
	FUNC6(&qspi->transfer_complete);

	ret = FUNC2(cookie);
	if (ret) {
		FUNC0(qspi->dev, "dma_submit_error %d\n", cookie);
		return -EIO;
	}

	FUNC1(chan);
	ret = FUNC8(&qspi->transfer_complete,
					  FUNC5(len));
	if (ret <= 0) {
		FUNC4(chan);
		FUNC0(qspi->dev, "DMA wait_for_completion_timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}