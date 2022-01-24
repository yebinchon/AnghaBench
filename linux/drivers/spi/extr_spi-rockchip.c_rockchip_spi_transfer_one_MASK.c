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
struct spi_transfer {int bits_per_word; int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_master {int (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int dummy; } ;
struct rockchip_spi {int n_bytes; int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ROCKCHIP_SPI_MAX_TRANLEN ; 
 scalar_t__ ROCKCHIP_SPI_SR ; 
 scalar_t__ ROCKCHIP_SPI_SSIENR ; 
 int SR_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_spi*,struct spi_device*,struct spi_transfer*,int) ; 
 int FUNC4 (struct rockchip_spi*,struct spi_master*,struct spi_transfer*) ; 
 int FUNC5 (struct rockchip_spi*,struct spi_transfer*) ; 
 struct rockchip_spi* FUNC6 (struct spi_master*) ; 
 int FUNC7 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC8(
		struct spi_master *master,
		struct spi_device *spi,
		struct spi_transfer *xfer)
{
	struct rockchip_spi *rs = FUNC6(master);
	bool use_dma;

	FUNC0(FUNC2(rs->regs + ROCKCHIP_SPI_SSIENR) &&
		(FUNC2(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY));

	if (!xfer->tx_buf && !xfer->rx_buf) {
		FUNC1(rs->dev, "No buffer for transfer\n");
		return -EINVAL;
	}

	if (xfer->len > ROCKCHIP_SPI_MAX_TRANLEN) {
		FUNC1(rs->dev, "Transfer is too long (%d)\n", xfer->len);
		return -EINVAL;
	}

	rs->n_bytes = xfer->bits_per_word <= 8 ? 1 : 2;

	use_dma = master->can_dma ? master->can_dma(master, spi, xfer) : false;

	FUNC3(rs, spi, xfer, use_dma);

	if (use_dma)
		return FUNC4(rs, master, xfer);

	return FUNC5(rs, xfer);
}