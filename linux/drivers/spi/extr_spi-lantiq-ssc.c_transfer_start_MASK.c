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
struct spi_transfer {int len; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct lantiq_ssc_spi {int tx_todo; int rx_todo; int /*<<< orphan*/  lock; scalar_t__ tx; scalar_t__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi*) ; 

__attribute__((used)) static int FUNC4(struct lantiq_ssc_spi *spi, struct spi_device *spidev,
			  struct spi_transfer *t)
{
	unsigned long flags;

	FUNC1(&spi->lock, flags);

	spi->tx = t->tx_buf;
	spi->rx = t->rx_buf;

	if (t->tx_buf) {
		spi->tx_todo = t->len;

		/* initially fill TX FIFO */
		FUNC3(spi);
	}

	if (spi->rx) {
		spi->rx_todo = t->len;

		/* start shift clock in RX-only mode */
		if (!spi->tx)
			FUNC0(spi);
	}

	FUNC2(&spi->lock, flags);

	return t->len;
}