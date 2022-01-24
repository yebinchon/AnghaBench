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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int mode; int /*<<< orphan*/  chip_select; } ;
struct ath79_spi {int /*<<< orphan*/  ioc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_IOC ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC1 (struct ath79_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath79_spi* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, int is_active)
{
	struct ath79_spi *sp = FUNC2(spi);
	int cs_high = (spi->mode & SPI_CS_HIGH) ? is_active : !is_active;
	u32 cs_bit = FUNC0(spi->chip_select);

	if (cs_high)
		sp->ioc_base |= cs_bit;
	else
		sp->ioc_base &= ~cs_bit;

	FUNC1(sp, AR71XX_SPI_REG_IOC, sp->ioc_base);
}