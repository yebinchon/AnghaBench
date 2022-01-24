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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; int /*<<< orphan*/  dev; } ;
struct ppc4xx_spi {int count; int /*<<< orphan*/  done; TYPE_1__* regs; int /*<<< orphan*/ * tx; int /*<<< orphan*/  len; int /*<<< orphan*/  rx; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr; int /*<<< orphan*/  txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_PPC4XX_CR_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ppc4xx_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi, struct spi_transfer *t)
{
	struct ppc4xx_spi *hw;
	u8 data;

	FUNC0(&spi->dev, "txrx: tx %p, rx %p, len %d\n",
		t->tx_buf, t->rx_buf, t->len);

	hw = FUNC2(spi->master);

	hw->tx = t->tx_buf;
	hw->rx = t->rx_buf;
	hw->len = t->len;
	hw->count = 0;

	/* send the first byte */
	data = hw->tx ? hw->tx[0] : 0;
	FUNC1(&hw->regs->txd, data);
	FUNC1(&hw->regs->cr, SPI_PPC4XX_CR_STR);
	FUNC3(&hw->done);

	return hw->count;
}