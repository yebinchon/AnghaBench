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
struct a3700_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int A3700_SPI_CLK_CAPT_EDGE ; 
 int A3700_SPI_CLK_EVEN_OFFS ; 
 int A3700_SPI_CLK_PRESCALE_MASK ; 
 int /*<<< orphan*/  A3700_SPI_IF_CFG_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_TIME_REG ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a3700_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct a3700_spi *a3700_spi,
				unsigned int speed_hz)
{
	u32 val;
	u32 prescale;

	prescale = FUNC0(FUNC1(a3700_spi->clk), speed_hz);

	/* For prescaler values over 15, we can only set it by steps of 2.
	 * Starting from A3700_SPI_CLK_EVEN_OFFS, we set values from 0 up to
	 * 30. We only use this range from 16 to 30.
	 */
	if (prescale > 15)
		prescale = A3700_SPI_CLK_EVEN_OFFS + FUNC0(prescale, 2);

	val = FUNC2(a3700_spi, A3700_SPI_IF_CFG_REG);
	val = val & ~A3700_SPI_CLK_PRESCALE_MASK;

	val = val | (prescale & A3700_SPI_CLK_PRESCALE_MASK);
	FUNC3(a3700_spi, A3700_SPI_IF_CFG_REG, val);

	if (prescale <= 2) {
		val = FUNC2(a3700_spi, A3700_SPI_IF_TIME_REG);
		val |= A3700_SPI_CLK_CAPT_EDGE;
		FUNC3(a3700_spi, A3700_SPI_IF_TIME_REG, val);
	}
}