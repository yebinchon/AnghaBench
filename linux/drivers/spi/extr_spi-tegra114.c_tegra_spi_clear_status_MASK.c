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
struct tegra_spi_data {int dummy; } ;

/* Variables and functions */
 int SPI_ERR ; 
 int SPI_FIFO_ERROR ; 
 int /*<<< orphan*/  SPI_FIFO_STATUS ; 
 int /*<<< orphan*/  SPI_TRANS_STATUS ; 
 int FUNC0 (struct tegra_spi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_spi_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_spi_data *tspi)
{
	u32 val;

	/* Write 1 to clear status register */
	val = FUNC0(tspi, SPI_TRANS_STATUS);
	FUNC1(tspi, val, SPI_TRANS_STATUS);

	/* Clear fifo status error if any */
	val = FUNC0(tspi, SPI_FIFO_STATUS);
	if (val & SPI_ERR)
		FUNC1(tspi, SPI_ERR | SPI_FIFO_ERROR,
				SPI_FIFO_STATUS);
}