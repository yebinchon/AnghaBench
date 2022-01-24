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
struct tegra_slink_data {int tx_status; int rx_status; int /*<<< orphan*/  dev; int /*<<< orphan*/  xfer_completion; } ;
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SLINK_DMA_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tegra_slink_data* FUNC3 (struct spi_master*) ; 
 int FUNC4 (struct spi_device*,struct spi_transfer*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master,
				    struct spi_device *spi,
				    struct spi_transfer *xfer)
{
	struct tegra_slink_data *tspi = FUNC3(master);
	int ret;

	FUNC2(&tspi->xfer_completion);
	ret = FUNC4(spi, xfer);
	if (ret < 0) {
		FUNC1(tspi->dev,
			"spi can not start transfer, err %d\n", ret);
		return ret;
	}

	ret = FUNC5(&tspi->xfer_completion,
					  SLINK_DMA_TIMEOUT);
	if (FUNC0(ret == 0)) {
		FUNC1(tspi->dev,
			"spi transfer timeout, err %d\n", ret);
		return -EIO;
	}

	if (tspi->tx_status)
		return tspi->tx_status;
	if (tspi->rx_status)
		return tspi->rx_status;

	return 0;
}