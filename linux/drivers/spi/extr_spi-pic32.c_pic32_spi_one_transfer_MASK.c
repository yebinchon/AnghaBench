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
struct TYPE_4__ {scalar_t__ nents; } ;
struct TYPE_3__ {scalar_t__ nents; } ;
struct spi_transfer {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; scalar_t__ rx_buf; scalar_t__ tx_buf; TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct spi_master {int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct pic32_spi {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  fault_irq; void const* rx; void const* rx_end; void const* tx; void const* tx_end; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pic32_spi*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct pic32_spi*,scalar_t__) ; 
 int FUNC5 (struct pic32_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct pic32_spi* FUNC7 (struct spi_master*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct spi_master *master,
				  struct spi_device *spi,
				  struct spi_transfer *transfer)
{
	struct pic32_spi *pic32s;
	bool dma_issued = false;
	unsigned long timeout;
	int ret;

	pic32s = FUNC7(master);

	/* handle transfer specific word size change */
	if (transfer->bits_per_word &&
	    (transfer->bits_per_word != pic32s->bits_per_word)) {
		ret = FUNC5(pic32s, transfer->bits_per_word);
		if (ret)
			return ret;
		pic32s->bits_per_word = transfer->bits_per_word;
	}

	/* handle transfer specific speed change */
	if (transfer->speed_hz && (transfer->speed_hz != pic32s->speed_hz)) {
		FUNC4(pic32s, transfer->speed_hz);
		pic32s->speed_hz = transfer->speed_hz;
	}

	FUNC6(&pic32s->xfer_done);

	/* transact by DMA mode */
	if (transfer->rx_sg.nents && transfer->tx_sg.nents) {
		ret = FUNC3(pic32s, transfer);
		if (ret) {
			FUNC0(&spi->dev, "dma submit error\n");
			return ret;
		}

		/* DMA issued */
		dma_issued = true;
	} else {
		/* set current transfer information */
		pic32s->tx = (const void *)transfer->tx_buf;
		pic32s->rx = (const void *)transfer->rx_buf;
		pic32s->tx_end = pic32s->tx + transfer->len;
		pic32s->rx_end = pic32s->rx + transfer->len;
		pic32s->len = transfer->len;

		/* transact by interrupt driven PIO */
		FUNC2(pic32s->fault_irq);
		FUNC2(pic32s->rx_irq);
		FUNC2(pic32s->tx_irq);
	}

	/* wait for completion */
	timeout = FUNC8(&pic32s->xfer_done, 2 * HZ);
	if (timeout == 0) {
		FUNC0(&spi->dev, "wait error/timedout\n");
		if (dma_issued) {
			FUNC1(master->dma_rx);
			FUNC1(master->dma_tx);
		}
		ret = -ETIMEDOUT;
	} else {
		ret = 0;
	}

	return ret;
}