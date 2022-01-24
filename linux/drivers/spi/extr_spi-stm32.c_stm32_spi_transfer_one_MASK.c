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
struct stm32_spi {int cur_usedma; TYPE_1__* cfg; int /*<<< orphan*/  dev; scalar_t__ rx_buf; int /*<<< orphan*/  rx_len; scalar_t__ tx_buf; int /*<<< orphan*/  tx_len; } ;
struct spi_transfer {int /*<<< orphan*/  len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {scalar_t__ (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int (* transfer_one_irq ) (struct stm32_spi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct stm32_spi* FUNC1 (struct spi_master*) ; 
 int FUNC2 (struct stm32_spi*,struct spi_transfer*) ; 
 int FUNC3 (struct stm32_spi*,struct spi_device*,struct spi_transfer*) ; 
 scalar_t__ FUNC4 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC5 (struct stm32_spi*) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master,
				  struct spi_device *spi_dev,
				  struct spi_transfer *transfer)
{
	struct stm32_spi *spi = FUNC1(master);
	int ret;

	spi->tx_buf = transfer->tx_buf;
	spi->rx_buf = transfer->rx_buf;
	spi->tx_len = spi->tx_buf ? transfer->len : 0;
	spi->rx_len = spi->rx_buf ? transfer->len : 0;

	spi->cur_usedma = (master->can_dma &&
			   master->can_dma(master, spi_dev, transfer));

	ret = FUNC3(spi, spi_dev, transfer);
	if (ret) {
		FUNC0(spi->dev, "SPI transfer setup failed\n");
		return ret;
	}

	if (spi->cur_usedma)
		return FUNC2(spi, transfer);
	else
		return spi->cfg->transfer_one_irq(spi);
}