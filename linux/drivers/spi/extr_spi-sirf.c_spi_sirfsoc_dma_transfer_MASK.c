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
struct spi_transfer {int len; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct sirfsoc_spi {int type; scalar_t__ left_tx_word; scalar_t__ dat_max_frm_len; unsigned long word_width; void* rx; TYPE_1__* regs; scalar_t__ base; void* dst_start; void* src_start; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  tx_done; scalar_t__ left_rx_word; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  rx_done; scalar_t__ tx; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; void* callback; } ;
struct TYPE_2__ {scalar_t__ tx_rx_en; scalar_t__ txfifo_op; scalar_t__ rxfifo_op; scalar_t__ rx_dma_io_len; scalar_t__ tx_dma_io_len; scalar_t__ spi_ctrl; scalar_t__ int_st; scalar_t__ usp_int_en_clr; scalar_t__ int_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned long SIRFSOC_SPI_ENA_AUTO_CLR ; 
 unsigned long SIRFSOC_SPI_FIFO_RESET ; 
 unsigned long SIRFSOC_SPI_FIFO_START ; 
 unsigned long SIRFSOC_SPI_MUL_DAT_MODE ; 
 unsigned long SIRFSOC_SPI_RX_EN ; 
 unsigned long SIRFSOC_SPI_TX_EN ; 
#define  SIRF_REAL_SPI 130 
#define  SIRF_USP_SPI_A7 129 
#define  SIRF_USP_SPI_P2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (scalar_t__) ; 
 struct sirfsoc_spi* FUNC8 (int /*<<< orphan*/ ) ; 
 void* spi_sirfsoc_dma_fini_callback ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct spi_device *spi,
	struct spi_transfer *t)
{
	struct sirfsoc_spi *sspi;
	struct dma_async_tx_descriptor *rx_desc, *tx_desc;
	int timeout = t->len * 10;

	sspi = FUNC8(spi->master);
	FUNC10(SIRFSOC_SPI_FIFO_RESET, sspi->base + sspi->regs->rxfifo_op);
	FUNC10(SIRFSOC_SPI_FIFO_RESET, sspi->base + sspi->regs->txfifo_op);
	switch (sspi->type) {
	case SIRF_REAL_SPI:
		FUNC10(SIRFSOC_SPI_FIFO_START,
			sspi->base + sspi->regs->rxfifo_op);
		FUNC10(SIRFSOC_SPI_FIFO_START,
			sspi->base + sspi->regs->txfifo_op);
		FUNC10(0, sspi->base + sspi->regs->int_en);
		break;
	case SIRF_USP_SPI_P2:
		FUNC10(0x0, sspi->base + sspi->regs->rxfifo_op);
		FUNC10(0x0, sspi->base + sspi->regs->txfifo_op);
		FUNC10(0, sspi->base + sspi->regs->int_en);
		break;
	case SIRF_USP_SPI_A7:
		FUNC10(0x0, sspi->base + sspi->regs->rxfifo_op);
		FUNC10(0x0, sspi->base + sspi->regs->txfifo_op);
		FUNC10(~0UL, sspi->base + sspi->regs->usp_int_en_clr);
		break;
	}
	FUNC10(FUNC7(sspi->base + sspi->regs->int_st),
		sspi->base + sspi->regs->int_st);
	if (sspi->left_tx_word < sspi->dat_max_frm_len) {
		switch (sspi->type) {
		case SIRF_REAL_SPI:
			FUNC10(FUNC7(sspi->base + sspi->regs->spi_ctrl) |
				SIRFSOC_SPI_ENA_AUTO_CLR |
				SIRFSOC_SPI_MUL_DAT_MODE,
				sspi->base + sspi->regs->spi_ctrl);
			FUNC10(sspi->left_tx_word - 1,
				sspi->base + sspi->regs->tx_dma_io_len);
			FUNC10(sspi->left_tx_word - 1,
				sspi->base + sspi->regs->rx_dma_io_len);
			break;
		case SIRF_USP_SPI_P2:
		case SIRF_USP_SPI_A7:
			/*USP simulate SPI, tx/rx_dma_io_len indicates bytes*/
			FUNC10(sspi->left_tx_word * sspi->word_width,
				sspi->base + sspi->regs->tx_dma_io_len);
			FUNC10(sspi->left_tx_word * sspi->word_width,
				sspi->base + sspi->regs->rx_dma_io_len);
			break;
		}
	} else {
		if (sspi->type == SIRF_REAL_SPI)
			FUNC10(FUNC7(sspi->base + sspi->regs->spi_ctrl),
				sspi->base + sspi->regs->spi_ctrl);
		FUNC10(0, sspi->base + sspi->regs->tx_dma_io_len);
		FUNC10(0, sspi->base + sspi->regs->rx_dma_io_len);
	}
	sspi->dst_start = FUNC2(&spi->dev, sspi->rx, t->len,
					(t->tx_buf != t->rx_buf) ?
					DMA_FROM_DEVICE : DMA_BIDIRECTIONAL);
	rx_desc = FUNC4(sspi->rx_chan,
		sspi->dst_start, t->len, DMA_DEV_TO_MEM,
		DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	rx_desc->callback = spi_sirfsoc_dma_fini_callback;
	rx_desc->callback_param = &sspi->rx_done;

	sspi->src_start = FUNC2(&spi->dev, (void *)sspi->tx, t->len,
					(t->tx_buf != t->rx_buf) ?
					DMA_TO_DEVICE : DMA_BIDIRECTIONAL);
	tx_desc = FUNC4(sspi->tx_chan,
		sspi->src_start, t->len, DMA_MEM_TO_DEV,
		DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	tx_desc->callback = spi_sirfsoc_dma_fini_callback;
	tx_desc->callback_param = &sspi->tx_done;

	FUNC5(tx_desc);
	FUNC5(rx_desc);
	FUNC1(sspi->tx_chan);
	FUNC1(sspi->rx_chan);
	FUNC10(SIRFSOC_SPI_RX_EN | SIRFSOC_SPI_TX_EN,
			sspi->base + sspi->regs->tx_rx_en);
	if (sspi->type == SIRF_USP_SPI_P2 ||
		sspi->type == SIRF_USP_SPI_A7) {
		FUNC10(SIRFSOC_SPI_FIFO_START,
			sspi->base + sspi->regs->rxfifo_op);
		FUNC10(SIRFSOC_SPI_FIFO_START,
			sspi->base + sspi->regs->txfifo_op);
	}
	if (FUNC9(&sspi->rx_done, timeout) == 0) {
		FUNC0(&spi->dev, "transfer timeout\n");
		FUNC6(sspi->rx_chan);
	} else
		sspi->left_rx_word = 0;
	/*
	 * we only wait tx-done event if transferring by DMA. for PIO,
	 * we get rx data by writing tx data, so if rx is done, tx has
	 * done earlier
	 */
	if (FUNC9(&sspi->tx_done, timeout) == 0) {
		FUNC0(&spi->dev, "transfer timeout\n");
		if (sspi->type == SIRF_USP_SPI_P2 ||
			sspi->type == SIRF_USP_SPI_A7)
			FUNC10(0, sspi->base + sspi->regs->tx_rx_en);
		FUNC6(sspi->tx_chan);
	}
	FUNC3(&spi->dev, sspi->src_start, t->len, DMA_TO_DEVICE);
	FUNC3(&spi->dev, sspi->dst_start, t->len, DMA_FROM_DEVICE);
	/* TX, RX FIFO stop */
	FUNC10(0, sspi->base + sspi->regs->rxfifo_op);
	FUNC10(0, sspi->base + sspi->regs->txfifo_op);
	if (sspi->left_tx_word >= sspi->dat_max_frm_len)
		FUNC10(0, sspi->base + sspi->regs->tx_rx_en);
	if (sspi->type == SIRF_USP_SPI_P2 ||
		sspi->type == SIRF_USP_SPI_A7)
		FUNC10(0, sspi->base + sspi->regs->tx_rx_en);
}