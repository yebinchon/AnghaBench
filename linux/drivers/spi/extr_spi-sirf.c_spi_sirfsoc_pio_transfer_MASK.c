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
struct spi_transfer {int len; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct sirfsoc_spi {scalar_t__ left_tx_word; scalar_t__ left_rx_word; int type; int word_width; unsigned int fifo_size; TYPE_1__* regs; scalar_t__ base; int /*<<< orphan*/  (* rx_word ) (struct sirfsoc_spi*) ;int /*<<< orphan*/  rx_done; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  (* tx_word ) (struct sirfsoc_spi*) ;} ;
struct TYPE_2__ {scalar_t__ txfifo_op; scalar_t__ rxfifo_op; scalar_t__ tx_rx_en; scalar_t__ rxfifo_st; scalar_t__ int_en; scalar_t__ txfifo_st; scalar_t__ rx_dma_io_len; scalar_t__ tx_dma_io_len; scalar_t__ spi_ctrl; scalar_t__ int_st; scalar_t__ usp_int_en_clr; } ;

/* Variables and functions */
 unsigned long SIRFSOC_SPI_ENA_AUTO_CLR ; 
 unsigned long FUNC0 (struct sirfsoc_spi*) ; 
 unsigned long FUNC1 (struct sirfsoc_spi*) ; 
 unsigned long SIRFSOC_SPI_FIFO_RESET ; 
 unsigned long SIRFSOC_SPI_FIFO_START ; 
 unsigned long SIRFSOC_SPI_MUL_DAT_MODE ; 
 unsigned long SIRFSOC_SPI_RX_EN ; 
 unsigned long SIRFSOC_SPI_RX_IO_DMA_INT_EN ; 
 unsigned long SIRFSOC_SPI_RX_OFLOW_INT_EN ; 
 unsigned long SIRFSOC_SPI_TXFIFO_EMPTY_INT_EN ; 
 unsigned long SIRFSOC_SPI_TX_EN ; 
 unsigned long SIRFSOC_SPI_TX_UFLOW_INT_EN ; 
#define  SIRF_REAL_SPI 130 
#define  SIRF_USP_SPI_A7 129 
#define  SIRF_USP_SPI_P2 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC3 (int,unsigned int) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 struct sirfsoc_spi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sirfsoc_spi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sirfsoc_spi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct spi_device *spi,
		struct spi_transfer *t)
{
	struct sirfsoc_spi *sspi;
	int timeout = t->len * 10;
	unsigned int data_units;

	sspi = FUNC5(spi->master);
	do {
		FUNC9(SIRFSOC_SPI_FIFO_RESET,
			sspi->base + sspi->regs->rxfifo_op);
		FUNC9(SIRFSOC_SPI_FIFO_RESET,
			sspi->base + sspi->regs->txfifo_op);
		switch (sspi->type) {
		case SIRF_USP_SPI_P2:
			FUNC9(0x0, sspi->base + sspi->regs->rxfifo_op);
			FUNC9(0x0, sspi->base + sspi->regs->txfifo_op);
			FUNC9(0, sspi->base + sspi->regs->int_en);
			FUNC9(FUNC4(sspi->base + sspi->regs->int_st),
				sspi->base + sspi->regs->int_st);
			FUNC9(FUNC3((sspi->left_tx_word * sspi->word_width),
				sspi->fifo_size),
				sspi->base + sspi->regs->tx_dma_io_len);
			FUNC9(FUNC3((sspi->left_rx_word * sspi->word_width),
				sspi->fifo_size),
				sspi->base + sspi->regs->rx_dma_io_len);
			break;
		case SIRF_USP_SPI_A7:
			FUNC9(0x0, sspi->base + sspi->regs->rxfifo_op);
			FUNC9(0x0, sspi->base + sspi->regs->txfifo_op);
			FUNC9(~0UL, sspi->base + sspi->regs->usp_int_en_clr);
			FUNC9(FUNC4(sspi->base + sspi->regs->int_st),
				sspi->base + sspi->regs->int_st);
			FUNC9(FUNC3((sspi->left_tx_word * sspi->word_width),
				sspi->fifo_size),
				sspi->base + sspi->regs->tx_dma_io_len);
			FUNC9(FUNC3((sspi->left_rx_word * sspi->word_width),
				sspi->fifo_size),
				sspi->base + sspi->regs->rx_dma_io_len);
			break;
		case SIRF_REAL_SPI:
			FUNC9(SIRFSOC_SPI_FIFO_START,
				sspi->base + sspi->regs->rxfifo_op);
			FUNC9(SIRFSOC_SPI_FIFO_START,
				sspi->base + sspi->regs->txfifo_op);
			FUNC9(0, sspi->base + sspi->regs->int_en);
			FUNC9(FUNC4(sspi->base + sspi->regs->int_st),
				sspi->base + sspi->regs->int_st);
			FUNC9(FUNC4(sspi->base + sspi->regs->spi_ctrl) |
				SIRFSOC_SPI_MUL_DAT_MODE |
				SIRFSOC_SPI_ENA_AUTO_CLR,
				sspi->base + sspi->regs->spi_ctrl);
			data_units = sspi->fifo_size / sspi->word_width;
			FUNC9(FUNC3(sspi->left_tx_word, data_units) - 1,
				sspi->base + sspi->regs->tx_dma_io_len);
			FUNC9(FUNC3(sspi->left_rx_word, data_units) - 1,
				sspi->base + sspi->regs->rx_dma_io_len);
			break;
		}
		while (!((FUNC4(sspi->base + sspi->regs->txfifo_st)
			& FUNC1(sspi))) &&
			sspi->left_tx_word)
			sspi->tx_word(sspi);
		FUNC9(SIRFSOC_SPI_TXFIFO_EMPTY_INT_EN |
			SIRFSOC_SPI_TX_UFLOW_INT_EN |
			SIRFSOC_SPI_RX_OFLOW_INT_EN |
			SIRFSOC_SPI_RX_IO_DMA_INT_EN,
			sspi->base + sspi->regs->int_en);
		FUNC9(SIRFSOC_SPI_RX_EN | SIRFSOC_SPI_TX_EN,
			sspi->base + sspi->regs->tx_rx_en);
		if (sspi->type == SIRF_USP_SPI_P2 ||
			sspi->type == SIRF_USP_SPI_A7) {
			FUNC9(SIRFSOC_SPI_FIFO_START,
				sspi->base + sspi->regs->rxfifo_op);
			FUNC9(SIRFSOC_SPI_FIFO_START,
				sspi->base + sspi->regs->txfifo_op);
		}
		if (!FUNC8(&sspi->tx_done, timeout) ||
			!FUNC8(&sspi->rx_done, timeout)) {
			FUNC2(&spi->dev, "transfer timeout\n");
			if (sspi->type == SIRF_USP_SPI_P2 ||
				sspi->type == SIRF_USP_SPI_A7)
				FUNC9(0, sspi->base + sspi->regs->tx_rx_en);
			break;
		}
		while (!((FUNC4(sspi->base + sspi->regs->rxfifo_st)
			& FUNC0(sspi))) &&
			sspi->left_rx_word)
			sspi->rx_word(sspi);
		if (sspi->type == SIRF_USP_SPI_P2 ||
			sspi->type == SIRF_USP_SPI_A7)
			FUNC9(0, sspi->base + sspi->regs->tx_rx_en);
		FUNC9(0, sspi->base + sspi->regs->rxfifo_op);
		FUNC9(0, sspi->base + sspi->regs->txfifo_op);
	} while (sspi->left_tx_word != 0 || sspi->left_rx_word != 0);
}