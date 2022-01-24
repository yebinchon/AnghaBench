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
struct tegra_spi_data {int cur_direction; scalar_t__ cur_pos; scalar_t__ cur_tx_pos; scalar_t__ cur_rx_pos; int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_spi; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  rst; int /*<<< orphan*/  dma_control_reg; int /*<<< orphan*/  command1_reg; int /*<<< orphan*/  dev; int /*<<< orphan*/  status_reg; scalar_t__ rx_status; scalar_t__ tx_status; struct spi_transfer* curr_xfer; } ;
struct spi_transfer {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DATA_DIR_RX ; 
 int DATA_DIR_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tegra_spi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_spi_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_spi_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_spi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_spi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(struct tegra_spi_data *tspi)
{
	struct spi_transfer *t = tspi->curr_xfer;
	unsigned long flags;

	FUNC4(&tspi->lock, flags);
	if (tspi->tx_status ||  tspi->rx_status) {
		FUNC1(tspi->dev, "CpuXfer ERROR bit set 0x%x\n",
			tspi->status_reg);
		FUNC1(tspi->dev, "CpuXfer 0x%08x:0x%08x\n",
			tspi->command1_reg, tspi->dma_control_reg);
		FUNC7(tspi);
		FUNC8(tspi);
		FUNC0(&tspi->xfer_completion);
		FUNC5(&tspi->lock, flags);
		FUNC2(tspi->rst);
		FUNC11(2);
		FUNC3(tspi->rst);
		return IRQ_HANDLED;
	}

	if (tspi->cur_direction & DATA_DIR_RX)
		FUNC9(tspi, t);

	if (tspi->cur_direction & DATA_DIR_TX)
		tspi->cur_pos = tspi->cur_tx_pos;
	else
		tspi->cur_pos = tspi->cur_rx_pos;

	if (tspi->cur_pos == t->len) {
		FUNC0(&tspi->xfer_completion);
		goto exit;
	}

	FUNC6(tspi->cur_spi, tspi, t);
	FUNC10(tspi, t);
exit:
	FUNC5(&tspi->lock, flags);
	return IRQ_HANDLED;
}