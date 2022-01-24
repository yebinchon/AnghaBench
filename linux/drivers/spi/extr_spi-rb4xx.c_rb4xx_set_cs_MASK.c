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
struct spi_device {int /*<<< orphan*/  master; } ;
struct rb4xx_spi {int dummy; } ;

/* Variables and functions */
 int AR71XX_SPI_IOC_CS0 ; 
 int AR71XX_SPI_IOC_CS1 ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_IOC ; 
 int /*<<< orphan*/  FUNC0 (struct rb4xx_spi*,int /*<<< orphan*/ ,int) ; 
 struct rb4xx_spi* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, bool enable)
{
	struct rb4xx_spi *rbspi = FUNC1(spi->master);

	/*
	 * Setting CS is done along with bitbanging the actual values,
	 * since it's all on the same hardware register. However the
	 * CPLD needs CS deselected after every command.
	 */
	if (enable)
		FUNC0(rbspi, AR71XX_SPI_REG_IOC,
			    AR71XX_SPI_IOC_CS0 | AR71XX_SPI_IOC_CS1);
}