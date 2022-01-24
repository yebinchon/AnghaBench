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
typedef  int u32 ;
struct tegra_spi_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned long HZ ; 
 int SPI_FIFO_EMPTY ; 
 int /*<<< orphan*/  SPI_FIFO_STATUS ; 
 int SPI_RX_FIFO_FLUSH ; 
 int SPI_TX_FIFO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (struct tegra_spi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_spi_data*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tegra_spi_data *tspi)
{
	unsigned long timeout = jiffies + HZ;
	u32 status;

	status = FUNC1(tspi, SPI_FIFO_STATUS);
	if ((status & SPI_FIFO_EMPTY) != SPI_FIFO_EMPTY) {
		status |= SPI_RX_FIFO_FLUSH | SPI_TX_FIFO_FLUSH;
		FUNC2(tspi, status, SPI_FIFO_STATUS);
		while ((status & SPI_FIFO_EMPTY) != SPI_FIFO_EMPTY) {
			status = FUNC1(tspi, SPI_FIFO_STATUS);
			if (FUNC3(jiffies, timeout)) {
				FUNC0(tspi->dev,
					"timeout waiting for fifo flush\n");
				return -EIO;
			}

			FUNC4(1);
		}
	}

	return 0;
}