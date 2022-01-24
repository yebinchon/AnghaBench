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
struct ath79_spi {int ioc_base; void* reg_ctrl; } ;

/* Variables and functions */
 int AR71XX_SPI_FS_GPIO ; 
 int AR71XX_SPI_IOC_CLK ; 
 int AR71XX_SPI_IOC_DO ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_CTRL ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_FS ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_IOC ; 
 void* FUNC0 (struct ath79_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath79_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ath79_spi *sp)
{
	/* enable GPIO mode */
	FUNC1(sp, AR71XX_SPI_REG_FS, AR71XX_SPI_FS_GPIO);

	/* save CTRL register */
	sp->reg_ctrl = FUNC0(sp, AR71XX_SPI_REG_CTRL);
	sp->ioc_base = FUNC0(sp, AR71XX_SPI_REG_IOC);

	/* clear clk and mosi in the base state */
	sp->ioc_base &= ~(AR71XX_SPI_IOC_DO | AR71XX_SPI_IOC_CLK);

	/* TODO: setup speed? */
	FUNC1(sp, AR71XX_SPI_REG_CTRL, 0x43);
}