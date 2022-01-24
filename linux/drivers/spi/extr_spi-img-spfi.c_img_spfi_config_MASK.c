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
struct spi_transfer {int len; scalar_t__ tx_nbits; scalar_t__ rx_nbits; scalar_t__ rx_buf; scalar_t__ tx_buf; int /*<<< orphan*/  speed_hz; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;
struct img_spfi {int /*<<< orphan*/  spfi_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPFI_CONTROL ; 
 int SPFI_CONTROL_GET_DMA ; 
 int SPFI_CONTROL_SE ; 
 int SPFI_CONTROL_SEND_DMA ; 
 int SPFI_CONTROL_TMODE_DUAL ; 
 int SPFI_CONTROL_TMODE_MASK ; 
 int SPFI_CONTROL_TMODE_QUAD ; 
 int SPFI_CONTROL_TMODE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPFI_DEVICE_PARAMETER_BITCLK_MASK ; 
 int SPFI_DEVICE_PARAMETER_BITCLK_SHIFT ; 
 int /*<<< orphan*/  SPFI_TRANSACTION ; 
 int SPFI_TRANSACTION_TSIZE_SHIFT ; 
 scalar_t__ SPI_NBITS_DUAL ; 
 scalar_t__ SPI_NBITS_QUAD ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct img_spfi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct img_spfi*,int,int /*<<< orphan*/ ) ; 
 struct img_spfi* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct spi_master *master, struct spi_device *spi,
			    struct spi_transfer *xfer)
{
	struct img_spfi *spfi = FUNC7(spi->master);
	u32 val, div;

	/*
	 * output = spfi_clk * (BITCLK / 512), where BITCLK must be a
	 * power of 2 up to 128
	 */
	div = FUNC0(FUNC3(spfi->spfi_clk), xfer->speed_hz);
	div = FUNC2(512 / (1 << FUNC4(div)), 1, 128);

	val = FUNC5(spfi, FUNC1(spi->chip_select));
	val &= ~(SPFI_DEVICE_PARAMETER_BITCLK_MASK <<
		 SPFI_DEVICE_PARAMETER_BITCLK_SHIFT);
	val |= div << SPFI_DEVICE_PARAMETER_BITCLK_SHIFT;
	FUNC6(spfi, val, FUNC1(spi->chip_select));

	FUNC6(spfi, xfer->len << SPFI_TRANSACTION_TSIZE_SHIFT,
		    SPFI_TRANSACTION);

	val = FUNC5(spfi, SPFI_CONTROL);
	val &= ~(SPFI_CONTROL_SEND_DMA | SPFI_CONTROL_GET_DMA);
	if (xfer->tx_buf)
		val |= SPFI_CONTROL_SEND_DMA;
	if (xfer->rx_buf)
		val |= SPFI_CONTROL_GET_DMA;
	val &= ~(SPFI_CONTROL_TMODE_MASK << SPFI_CONTROL_TMODE_SHIFT);
	if (xfer->tx_nbits == SPI_NBITS_DUAL &&
	    xfer->rx_nbits == SPI_NBITS_DUAL)
		val |= SPFI_CONTROL_TMODE_DUAL << SPFI_CONTROL_TMODE_SHIFT;
	else if (xfer->tx_nbits == SPI_NBITS_QUAD &&
		 xfer->rx_nbits == SPI_NBITS_QUAD)
		val |= SPFI_CONTROL_TMODE_QUAD << SPFI_CONTROL_TMODE_SHIFT;
	val |= SPFI_CONTROL_SE;
	FUNC6(spfi, val, SPFI_CONTROL);
}