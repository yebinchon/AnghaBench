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
struct spi_device {int mode; int /*<<< orphan*/  dev; } ;
struct mt7621_spi {unsigned int speed; int /*<<< orphan*/  sys_freq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int MASTER_RS_CLK_SEL ; 
 int MASTER_RS_CLK_SEL_SHIFT ; 
 int MT7621_CPHA ; 
 int MT7621_CPOL ; 
 int MT7621_LSB_FIRST ; 
 int /*<<< orphan*/  MT7621_SPI_MASTER ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct mt7621_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7621_spi*,int /*<<< orphan*/ ,int) ; 
 struct mt7621_spi* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, unsigned int speed)
{
	struct mt7621_spi *rs = FUNC4(spi);
	u32 rate;
	u32 reg;

	FUNC1(&spi->dev, "speed:%u\n", speed);

	rate = FUNC0(rs->sys_freq, speed);
	FUNC1(&spi->dev, "rate-1:%u\n", rate);

	if (rate > 4097)
		return -EINVAL;

	if (rate < 2)
		rate = 2;

	reg = FUNC2(rs, MT7621_SPI_MASTER);
	reg &= ~MASTER_RS_CLK_SEL;
	reg |= (rate - 2) << MASTER_RS_CLK_SEL_SHIFT;
	rs->speed = speed;

	reg &= ~MT7621_LSB_FIRST;
	if (spi->mode & SPI_LSB_FIRST)
		reg |= MT7621_LSB_FIRST;

	/*
	 * This SPI controller seems to be tested on SPI flash only and some
	 * bits are swizzled under other SPI modes probably due to incorrect
	 * wiring inside the silicon. Only mode 0 works correctly.
	 */
	reg &= ~(MT7621_CPHA | MT7621_CPOL);

	FUNC3(rs, MT7621_SPI_MASTER, reg);

	return 0;
}