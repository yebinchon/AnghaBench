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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_spi_data {int cur_direction; unsigned int curr_dma_words; int is_curr_dma_xfer; int /*<<< orphan*/  command1_reg; int /*<<< orphan*/  dma_control_reg; } ;
struct spi_transfer {int dummy; } ;

/* Variables and functions */
 int DATA_DIR_RX ; 
 int DATA_DIR_TX ; 
 int /*<<< orphan*/  SPI_COMMAND1 ; 
 int /*<<< orphan*/  SPI_DMA_BLK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SPI_DMA_CTL ; 
 int /*<<< orphan*/  SPI_IE_RX ; 
 int /*<<< orphan*/  SPI_IE_TX ; 
 int /*<<< orphan*/  SPI_PIO ; 
 unsigned int FUNC1 (struct tegra_spi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_spi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
		struct tegra_spi_data *tspi, struct spi_transfer *t)
{
	u32 val;
	unsigned cur_words;

	if (tspi->cur_direction & DATA_DIR_TX)
		cur_words = FUNC1(tspi, t);
	else
		cur_words = tspi->curr_dma_words;

	val = FUNC0(cur_words - 1);
	FUNC2(tspi, val, SPI_DMA_BLK);

	val = 0;
	if (tspi->cur_direction & DATA_DIR_TX)
		val |= SPI_IE_TX;

	if (tspi->cur_direction & DATA_DIR_RX)
		val |= SPI_IE_RX;

	FUNC2(tspi, val, SPI_DMA_CTL);
	tspi->dma_control_reg = val;

	tspi->is_curr_dma_xfer = false;

	val = tspi->command1_reg;
	val |= SPI_PIO;
	FUNC2(tspi, val, SPI_COMMAND1);
	return 0;
}