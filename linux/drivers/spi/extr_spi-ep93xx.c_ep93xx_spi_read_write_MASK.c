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
struct spi_transfer {scalar_t__ len; } ;
struct spi_master {TYPE_1__* cur_msg; } ;
struct ep93xx_spi {scalar_t__ fifo_level; scalar_t__ tx; scalar_t__ rx; scalar_t__ mmio; } ;
struct TYPE_2__ {struct spi_transfer* state; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ SPI_FIFO_SIZE ; 
 scalar_t__ SSPSR ; 
 int SSPSR_RNE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 
 int FUNC2 (scalar_t__) ; 
 struct ep93xx_spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master)
{
	struct ep93xx_spi *espi = FUNC3(master);
	struct spi_transfer *xfer = master->cur_msg->state;

	/* read as long as RX FIFO has frames in it */
	while ((FUNC2(espi->mmio + SSPSR) & SSPSR_RNE)) {
		FUNC0(master);
		espi->fifo_level--;
	}

	/* write as long as TX FIFO has room */
	while (espi->fifo_level < SPI_FIFO_SIZE && espi->tx < xfer->len) {
		FUNC1(master);
		espi->fifo_level++;
	}

	if (espi->rx == xfer->len)
		return 0;

	return -EINPROGRESS;
}