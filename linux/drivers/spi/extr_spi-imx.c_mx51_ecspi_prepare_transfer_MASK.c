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
struct spi_transfer {int speed_hz; } ;
struct spi_imx_data {int slave_burst; int bits_per_word; int spi_bus_clk; scalar_t__ base; scalar_t__ usedma; scalar_t__ slave_mode; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MX51_ECSPI_CTRL ; 
 int MX51_ECSPI_CTRL_BL_MASK ; 
 int MX51_ECSPI_CTRL_BL_OFFSET ; 
 int MX51_ECSPI_CTRL_POSTDIV_OFFSET ; 
 int MX51_ECSPI_CTRL_PREDIV_OFFSET ; 
 int MX51_ECSPI_CTRL_SMC ; 
 scalar_t__ FUNC0 (struct spi_imx_data*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct spi_imx_data*,int,int*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct spi_imx_data *spi_imx,
				       struct spi_device *spi,
				       struct spi_transfer *t)
{
	u32 ctrl = FUNC3(spi_imx->base + MX51_ECSPI_CTRL);
	u32 clk = t->speed_hz, delay;

	/* Clear BL field and set the right value */
	ctrl &= ~MX51_ECSPI_CTRL_BL_MASK;
	if (spi_imx->slave_mode && FUNC0(spi_imx))
		ctrl |= (spi_imx->slave_burst * 8 - 1)
			<< MX51_ECSPI_CTRL_BL_OFFSET;
	else
		ctrl |= (spi_imx->bits_per_word - 1)
			<< MX51_ECSPI_CTRL_BL_OFFSET;

	/* set clock speed */
	ctrl &= ~(0xf << MX51_ECSPI_CTRL_POSTDIV_OFFSET |
		  0xf << MX51_ECSPI_CTRL_PREDIV_OFFSET);
	ctrl |= FUNC2(spi_imx, t->speed_hz, &clk);
	spi_imx->spi_bus_clk = clk;

	if (spi_imx->usedma)
		ctrl |= MX51_ECSPI_CTRL_SMC;

	FUNC6(ctrl, spi_imx->base + MX51_ECSPI_CTRL);

	/*
	 * Wait until the changes in the configuration register CONFIGREG
	 * propagate into the hardware. It takes exactly one tick of the
	 * SCLK clock, but we will wait two SCLK clock just to be sure. The
	 * effect of the delay it takes for the hardware to apply changes
	 * is noticable if the SCLK clock run very slow. In such a case, if
	 * the polarity of SCLK should be inverted, the GPIO ChipSelect might
	 * be asserted before the SCLK polarity changes, which would disrupt
	 * the SPI communication as the device on the other end would consider
	 * the change of SCLK polarity as a clock tick already.
	 */
	delay = (2 * 1000000) / clk;
	if (FUNC1(delay < 10))	/* SCLK is faster than 100 kHz */
		FUNC4(delay);
	else			/* SCLK is _very_ slow */
		FUNC5(delay, delay + 10);

	return 0;
}