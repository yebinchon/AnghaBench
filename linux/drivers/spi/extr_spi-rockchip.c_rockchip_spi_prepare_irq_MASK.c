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
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; scalar_t__ tx_buf; } ;
struct rockchip_spi {int tx_left; int n_bytes; int rx_left; scalar_t__ regs; scalar_t__ tx; int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_RF_FULL ; 
 scalar_t__ ROCKCHIP_SPI_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct rockchip_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_spi*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct rockchip_spi *rs,
		struct spi_transfer *xfer)
{
	rs->tx = xfer->tx_buf;
	rs->rx = xfer->rx_buf;
	rs->tx_left = rs->tx ? xfer->len / rs->n_bytes : 0;
	rs->rx_left = xfer->len / rs->n_bytes;

	FUNC2(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
	FUNC1(rs, true);

	if (rs->tx_left)
		FUNC0(rs);

	/* 1 means the transfer is in progress */
	return 1;
}