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
typedef  int u8 ;
typedef  int u32 ;
struct rb4xx_spi {int dummy; } ;

/* Variables and functions */
 int AR71XX_SPI_IOC_CLK ; 
 int AR71XX_SPI_IOC_CS2 ; 
 int AR71XX_SPI_IOC_DO ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_IOC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rb4xx_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct rb4xx_spi *rbspi, u32 spi_ioc,
				   u8 value)
{
	u32 regval;

	regval = spi_ioc;
	if (value & FUNC0(1))
		regval |= AR71XX_SPI_IOC_DO;
	if (value & FUNC0(0))
		regval |= AR71XX_SPI_IOC_CS2;

	FUNC1(rbspi, AR71XX_SPI_REG_IOC, regval);
	FUNC1(rbspi, AR71XX_SPI_REG_IOC, regval | AR71XX_SPI_IOC_CLK);
}