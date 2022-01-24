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
struct spi_device {int dummy; } ;
struct ath79_spi {int ioc_base; } ;

/* Variables and functions */
 int AR71XX_SPI_IOC_CLK ; 
 int AR71XX_SPI_IOC_DO ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_IOC ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_RDS ; 
 int /*<<< orphan*/  FUNC0 (struct ath79_spi*,unsigned int) ; 
 int FUNC1 (struct ath79_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath79_spi*,int /*<<< orphan*/ ,int) ; 
 struct ath79_spi* FUNC3 (struct spi_device*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(struct spi_device *spi, unsigned int nsecs,
			       u32 word, u8 bits, unsigned flags)
{
	struct ath79_spi *sp = FUNC3(spi);
	u32 ioc = sp->ioc_base;

	/* clock starts at inactive polarity */
	for (word <<= (32 - bits); FUNC4(bits); bits--) {
		u32 out;

		if (word & (1 << 31))
			out = ioc | AR71XX_SPI_IOC_DO;
		else
			out = ioc & ~AR71XX_SPI_IOC_DO;

		/* setup MSB (to slave) on trailing edge */
		FUNC2(sp, AR71XX_SPI_REG_IOC, out);
		FUNC0(sp, nsecs);
		FUNC2(sp, AR71XX_SPI_REG_IOC, out | AR71XX_SPI_IOC_CLK);
		FUNC0(sp, nsecs);
		if (bits == 1)
			FUNC2(sp, AR71XX_SPI_REG_IOC, out);

		word <<= 1;
	}

	return FUNC1(sp, AR71XX_SPI_REG_RDS);
}