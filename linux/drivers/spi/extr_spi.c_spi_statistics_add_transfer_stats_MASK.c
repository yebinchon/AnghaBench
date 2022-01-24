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
struct spi_transfer {scalar_t__ tx_buf; scalar_t__ rx_buf; scalar_t__ len; } ;
struct spi_statistics {int /*<<< orphan*/  lock; int /*<<< orphan*/  bytes_rx; int /*<<< orphan*/  bytes_tx; int /*<<< orphan*/  bytes; int /*<<< orphan*/ * transfer_bytes_histo; int /*<<< orphan*/  transfers; } ;
struct spi_controller {scalar_t__ dummy_tx; scalar_t__ dummy_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_STATISTICS_HISTO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct spi_statistics *stats,
				       struct spi_transfer *xfer,
				       struct spi_controller *ctlr)
{
	unsigned long flags;
	int l2len = FUNC1(FUNC0(xfer->len), SPI_STATISTICS_HISTO_SIZE) - 1;

	if (l2len < 0)
		l2len = 0;

	FUNC2(&stats->lock, flags);

	stats->transfers++;
	stats->transfer_bytes_histo[l2len]++;

	stats->bytes += xfer->len;
	if ((xfer->tx_buf) &&
	    (xfer->tx_buf != ctlr->dummy_tx))
		stats->bytes_tx += xfer->len;
	if ((xfer->rx_buf) &&
	    (xfer->rx_buf != ctlr->dummy_rx))
		stats->bytes_rx += xfer->len;

	FUNC3(&stats->lock, flags);
}