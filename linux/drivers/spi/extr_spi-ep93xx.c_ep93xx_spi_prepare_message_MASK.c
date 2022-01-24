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
struct spi_message {int dummy; } ;
struct spi_master {int /*<<< orphan*/  dev; } ;
struct ep93xx_spi {scalar_t__ fifo_level; scalar_t__ mmio; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SPI_TIMEOUT ; 
 scalar_t__ SSPDR ; 
 scalar_t__ SSPSR ; 
 int SSPSR_RNE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 struct ep93xx_spi* FUNC3 (struct spi_master*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_master *master,
				      struct spi_message *msg)
{
	struct ep93xx_spi *espi = FUNC3(master);
	unsigned long timeout;

	/*
	 * Just to be sure: flush any data from RX FIFO.
	 */
	timeout = jiffies + FUNC1(SPI_TIMEOUT);
	while (FUNC2(espi->mmio + SSPSR) & SSPSR_RNE) {
		if (FUNC4(jiffies, timeout)) {
			FUNC0(&master->dev,
				 "timeout while flushing RX FIFO\n");
			return -ETIMEDOUT;
		}
		FUNC2(espi->mmio + SSPDR);
	}

	/*
	 * We explicitly handle FIFO level. This way we don't have to check TX
	 * FIFO status using %SSPSR_TNF bit which may cause RX FIFO overruns.
	 */
	espi->fifo_level = 0;

	return 0;
}