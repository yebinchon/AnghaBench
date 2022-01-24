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
struct spi_master {int dummy; } ;
struct omap1_spi100k {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPI_CTRL ; 
 int SPI_CTRL_RD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ SPI_RX_LSB ; 
 scalar_t__ SPI_RX_MSB ; 
 scalar_t__ SPI_STATUS ; 
 int SPI_STATUS_RD ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 
 struct omap1_spi100k* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct spi_master *master, int len)
{
	int dataH, dataL;
	struct omap1_spi100k *spi100k = FUNC5(master);

	/* Always do at least 16 bits */
	if (len <= 8)
		len = 16;

	FUNC4(master);
	FUNC7(FUNC0(0) |
	       FUNC1(len) |
	       SPI_CTRL_RD,
	       spi100k->base + SPI_CTRL);

	while ((FUNC2(spi100k->base + SPI_STATUS) & SPI_STATUS_RD) != SPI_STATUS_RD)
		;
	FUNC6(1000);

	dataL = FUNC2(spi100k->base + SPI_RX_LSB);
	dataH = FUNC2(spi100k->base + SPI_RX_MSB);
	FUNC3(master);

	return dataL;
}