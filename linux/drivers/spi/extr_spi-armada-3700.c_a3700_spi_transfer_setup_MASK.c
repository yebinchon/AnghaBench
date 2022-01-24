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
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  speed_hz; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct a3700_spi {int /*<<< orphan*/  buf_len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 struct a3700_spi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi,
				     struct spi_transfer *xfer)
{
	struct a3700_spi *a3700_spi;

	a3700_spi = FUNC2(spi->master);

	FUNC1(a3700_spi, xfer->speed_hz);

	/* Use 4 bytes long transfers. Each transfer method has its way to deal
	 * with the remaining bytes for non 4-bytes aligned transfers.
	 */
	FUNC0(a3700_spi, 4);

	/* Initialize the working buffers */
	a3700_spi->tx_buf  = xfer->tx_buf;
	a3700_spi->rx_buf  = xfer->rx_buf;
	a3700_spi->buf_len = xfer->len;
}