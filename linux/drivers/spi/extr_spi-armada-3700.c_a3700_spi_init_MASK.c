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
typedef  unsigned int u32 ;
struct spi_master {int num_chipselect; int /*<<< orphan*/  mode_bits; } ;
struct a3700_spi {struct spi_master* master; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_IF_CFG_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_DIN_CNT_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_HDR_CNT_REG ; 
 int /*<<< orphan*/  A3700_SPI_INT_MASK_REG ; 
 int /*<<< orphan*/  A3700_SPI_INT_STAT_REG ; 
 unsigned int A3700_SPI_SRST ; 
 int /*<<< orphan*/  A3700_SPI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct a3700_spi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct a3700_spi*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct a3700_spi *a3700_spi)
{
	struct spi_master *master = a3700_spi->master;
	u32 val;
	int i, ret = 0;

	/* Reset SPI unit */
	val = FUNC4(a3700_spi, A3700_SPI_IF_CFG_REG);
	val |= A3700_SPI_SRST;
	FUNC5(a3700_spi, A3700_SPI_IF_CFG_REG, val);

	FUNC6(A3700_SPI_TIMEOUT);

	val = FUNC4(a3700_spi, A3700_SPI_IF_CFG_REG);
	val &= ~A3700_SPI_SRST;
	FUNC5(a3700_spi, A3700_SPI_IF_CFG_REG, val);

	/* Disable AUTO_CS and deactivate all chip-selects */
	FUNC0(a3700_spi);
	for (i = 0; i < master->num_chipselect; i++)
		FUNC1(a3700_spi, i);

	/* Enable FIFO mode */
	FUNC2(a3700_spi, true);

	/* Set SPI mode */
	FUNC3(a3700_spi, master->mode_bits);

	/* Reset counters */
	FUNC5(a3700_spi, A3700_SPI_IF_HDR_CNT_REG, 0);
	FUNC5(a3700_spi, A3700_SPI_IF_DIN_CNT_REG, 0);

	/* Mask the interrupts and clear cause bits */
	FUNC5(a3700_spi, A3700_SPI_INT_MASK_REG, 0);
	FUNC5(a3700_spi, A3700_SPI_INT_STAT_REG, ~0U);

	return ret;
}