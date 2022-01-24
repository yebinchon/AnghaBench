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
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct sirfsoc_spi {int left_tx_word; int left_rx_word; int word_width; scalar_t__ type; scalar_t__ tx_by_cmd; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct spi_transfer*) ; 
 scalar_t__ SIRF_REAL_SPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sirfsoc_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi, struct spi_transfer *t)
{
	struct sirfsoc_spi *sspi;

	sspi = FUNC2(spi->master);
	sspi->tx = t->tx_buf;
	sspi->rx = t->rx_buf;
	sspi->left_tx_word = sspi->left_rx_word = t->len / sspi->word_width;
	FUNC1(&sspi->rx_done);
	FUNC1(&sspi->tx_done);
	/*
	 * in the transfer, if transfer data using command register with rx_buf
	 * null, just fill command data into command register and wait for its
	 * completion.
	 */
	if (sspi->type == SIRF_REAL_SPI && sspi->tx_by_cmd)
		FUNC3(spi, t);
	else if (FUNC0(t))
		FUNC4(spi, t);
	else
		FUNC5(spi, t);

	return t->len - sspi->left_rx_word * sspi->word_width;
}