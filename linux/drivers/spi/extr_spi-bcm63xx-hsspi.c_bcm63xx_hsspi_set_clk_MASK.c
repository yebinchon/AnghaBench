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
struct spi_device {unsigned int chip_select; int mode; } ;
struct bcm63xx_hsspi {int speed_hz; int /*<<< orphan*/  bus_mutex; scalar_t__ regs; } ;

/* Variables and functions */
 int CLK_CTRL_ACCUM_RST_ON_LOOP ; 
 int FUNC0 (int,int) ; 
 int GLOBAL_CTRL_CLK_POLARITY ; 
 scalar_t__ HSSPI_GLOBAL_CTRL_REG ; 
 int HSSPI_MAX_SYNC_CLOCK ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int SIGNAL_CTRL_ASYNC_INPUT_PATH ; 
 int SPI_CPOL ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bcm63xx_hsspi *bs,
				  struct spi_device *spi, int hz)
{
	unsigned int profile = spi->chip_select;
	u32 reg;

	reg = FUNC0(2048, FUNC0(bs->speed_hz, hz));
	FUNC4(CLK_CTRL_ACCUM_RST_ON_LOOP | reg,
		     bs->regs + FUNC1(profile));

	reg = FUNC3(bs->regs + FUNC2(profile));
	if (hz > HSSPI_MAX_SYNC_CLOCK)
		reg |= SIGNAL_CTRL_ASYNC_INPUT_PATH;
	else
		reg &= ~SIGNAL_CTRL_ASYNC_INPUT_PATH;
	FUNC4(reg, bs->regs + FUNC2(profile));

	FUNC5(&bs->bus_mutex);
	/* setup clock polarity */
	reg = FUNC3(bs->regs + HSSPI_GLOBAL_CTRL_REG);
	reg &= ~GLOBAL_CTRL_CLK_POLARITY;
	if (spi->mode & SPI_CPOL)
		reg |= GLOBAL_CTRL_CLK_POLARITY;
	FUNC4(reg, bs->regs + HSSPI_GLOBAL_CTRL_REG);
	FUNC6(&bs->bus_mutex);
}