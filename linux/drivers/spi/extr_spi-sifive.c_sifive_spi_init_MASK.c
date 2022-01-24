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
struct sifive_spi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_DELAY0 ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_DELAY1 ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_FCTRL ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_IE ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_RXMARK ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_TXMARK ; 
 int /*<<< orphan*/  FUNC4 (struct sifive_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct sifive_spi *spi)
{
	/* Watermark interrupts are disabled by default */
	FUNC4(spi, SIFIVE_SPI_REG_IE, 0);

	/* Default watermark FIFO threshold values */
	FUNC4(spi, SIFIVE_SPI_REG_TXMARK, 1);
	FUNC4(spi, SIFIVE_SPI_REG_RXMARK, 0);

	/* Set CS/SCK Delays and Inactive Time to defaults */
	FUNC4(spi, SIFIVE_SPI_REG_DELAY0,
			 FUNC0(1) |
			 FUNC1(1));
	FUNC4(spi, SIFIVE_SPI_REG_DELAY1,
			 FUNC2(1) |
			 FUNC3(0));

	/* Exit specialized memory-mapped SPI flash mode */
	FUNC4(spi, SIFIVE_SPI_REG_FCTRL, 0);
}