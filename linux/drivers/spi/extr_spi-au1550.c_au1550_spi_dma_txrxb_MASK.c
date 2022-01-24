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
typedef  scalar_t__ u32 ;
struct spi_transfer {scalar_t__ len; scalar_t__ tx_dma; scalar_t__ rx_dma; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct au1550_spi {scalar_t__ len; scalar_t__ tx_count; scalar_t__ rx_count; scalar_t__ dma_rx_tmpbuf_size; scalar_t__ dma_rx_tmpbuf_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_rx_ch; int /*<<< orphan*/  dma_tx_ch; int /*<<< orphan*/  master_done; TYPE_1__* regs; scalar_t__ tx; scalar_t__ rx; scalar_t__ dma_rx_tmpbuf; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  psc_spipcr; int /*<<< orphan*/  psc_spimsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU1550_SPI_DMA_RXTMP_MINSIZE ; 
 int /*<<< orphan*/  DDMA_FLAGS_IE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  PSC_SPIMSK_SD ; 
 int /*<<< orphan*/  PSC_SPIPCR_MS ; 
 int FUNC0 (struct au1550_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct au1550_spi*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct au1550_spi* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct spi_device *spi, struct spi_transfer *t)
{
	struct au1550_spi *hw = FUNC13(spi->master);
	dma_addr_t dma_tx_addr;
	dma_addr_t dma_rx_addr;
	u32 res;

	hw->len = t->len;
	hw->tx_count = 0;
	hw->rx_count = 0;

	hw->tx = t->tx_buf;
	hw->rx = t->rx_buf;
	dma_tx_addr = t->tx_dma;
	dma_rx_addr = t->rx_dma;

	/*
	 * check if buffers are already dma mapped, map them otherwise:
	 * - first map the TX buffer, so cache data gets written to memory
	 * - then map the RX buffer, so that cache entries (with
	 *   soon-to-be-stale data) get removed
	 * use rx buffer in place of tx if tx buffer was not provided
	 * use temp rx buffer (preallocated or realloc to fit) for rx dma
	 */
	if (t->tx_buf) {
		if (t->tx_dma == 0) {	/* if DMA_ADDR_INVALID, map it */
			dma_tx_addr = FUNC7(hw->dev,
					(void *)t->tx_buf,
					t->len, DMA_TO_DEVICE);
			if (FUNC8(hw->dev, dma_tx_addr))
				FUNC6(hw->dev, "tx dma map error\n");
		}
	}

	if (t->rx_buf) {
		if (t->rx_dma == 0) {	/* if DMA_ADDR_INVALID, map it */
			dma_rx_addr = FUNC7(hw->dev,
					(void *)t->rx_buf,
					t->len, DMA_FROM_DEVICE);
			if (FUNC8(hw->dev, dma_rx_addr))
				FUNC6(hw->dev, "rx dma map error\n");
		}
	} else {
		if (t->len > hw->dma_rx_tmpbuf_size) {
			int ret;

			FUNC1(hw);
			ret = FUNC0(hw, FUNC12(t->len,
					AU1550_SPI_DMA_RXTMP_MINSIZE));
			if (ret < 0)
				return ret;
		}
		hw->rx = hw->dma_rx_tmpbuf;
		dma_rx_addr = hw->dma_rx_tmpbuf_addr;
		FUNC10(hw->dev, dma_rx_addr,
			t->len, DMA_FROM_DEVICE);
	}

	if (!t->tx_buf) {
		FUNC10(hw->dev, dma_rx_addr,
				t->len, DMA_BIDIRECTIONAL);
		hw->tx = hw->rx;
	}

	/* put buffers on the ring */
	res = FUNC2(hw->dma_rx_ch, FUNC14(hw->rx),
				    t->len, DDMA_FLAGS_IE);
	if (!res)
		FUNC6(hw->dev, "rx dma put dest error\n");

	res = FUNC3(hw->dma_tx_ch, FUNC14(hw->tx),
				      t->len, DDMA_FLAGS_IE);
	if (!res)
		FUNC6(hw->dev, "tx dma put source error\n");

	FUNC4(hw->dma_rx_ch);
	FUNC4(hw->dma_tx_ch);

	/* by default enable nearly all events interrupt */
	hw->regs->psc_spimsk = PSC_SPIMSK_SD;
	FUNC16(); /* drain writebuffer */

	/* start the transfer */
	hw->regs->psc_spipcr = PSC_SPIPCR_MS;
	FUNC16(); /* drain writebuffer */

	FUNC15(&hw->master_done);

	FUNC5(hw->dma_tx_ch);
	FUNC5(hw->dma_rx_ch);

	if (!t->rx_buf) {
		/* using the temporal preallocated and premapped buffer */
		FUNC9(hw->dev, dma_rx_addr, t->len,
			DMA_FROM_DEVICE);
	}
	/* unmap buffers if mapped above */
	if (t->rx_buf && t->rx_dma == 0 )
		FUNC11(hw->dev, dma_rx_addr, t->len,
			DMA_FROM_DEVICE);
	if (t->tx_buf && t->tx_dma == 0 )
		FUNC11(hw->dev, dma_tx_addr, t->len,
			DMA_TO_DEVICE);

	return hw->rx_count < hw->tx_count ? hw->rx_count : hw->tx_count;
}