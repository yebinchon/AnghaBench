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
struct tegra_sflash_data {int status_reg; int cur_direction; scalar_t__ cur_pos; scalar_t__ cur_tx_pos; scalar_t__ cur_rx_pos; int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_spi; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  rst; int /*<<< orphan*/  dma_control_reg; int /*<<< orphan*/  command_reg; int /*<<< orphan*/  dev; scalar_t__ rx_status; scalar_t__ tx_status; struct spi_transfer* curr_xfer; } ;
struct spi_transfer {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DATA_DIR_RX ; 
 int DATA_DIR_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SPI_BSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tegra_sflash_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_sflash_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_sflash_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(struct tegra_sflash_data *tsd)
{
	struct spi_transfer *t = tsd->curr_xfer;
	unsigned long flags;

	FUNC4(&tsd->lock, flags);
	if (tsd->tx_status || tsd->rx_status || (tsd->status_reg & SPI_BSY)) {
		FUNC1(tsd->dev,
			"CpuXfer ERROR bit set 0x%x\n", tsd->status_reg);
		FUNC1(tsd->dev,
			"CpuXfer 0x%08x:0x%08x\n", tsd->command_reg,
				tsd->dma_control_reg);
		FUNC2(tsd->rst);
		FUNC9(2);
		FUNC3(tsd->rst);
		FUNC0(&tsd->xfer_completion);
		goto exit;
	}

	if (tsd->cur_direction & DATA_DIR_RX)
		FUNC7(tsd, t);

	if (tsd->cur_direction & DATA_DIR_TX)
		tsd->cur_pos = tsd->cur_tx_pos;
	else
		tsd->cur_pos = tsd->cur_rx_pos;

	if (tsd->cur_pos == t->len) {
		FUNC0(&tsd->xfer_completion);
		goto exit;
	}

	FUNC6(tsd->cur_spi, tsd, t);
	FUNC8(tsd, t);
exit:
	FUNC5(&tsd->lock, flags);
	return IRQ_HANDLED;
}