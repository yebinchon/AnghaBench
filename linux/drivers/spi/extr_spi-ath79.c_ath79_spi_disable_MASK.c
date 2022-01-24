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
struct ath79_spi {int /*<<< orphan*/  reg_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_SPI_REG_CTRL ; 
 int /*<<< orphan*/  AR71XX_SPI_REG_FS ; 
 int /*<<< orphan*/  FUNC0 (struct ath79_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ath79_spi *sp)
{
	/* restore CTRL register */
	FUNC0(sp, AR71XX_SPI_REG_CTRL, sp->reg_ctrl);
	/* disable GPIO mode */
	FUNC0(sp, AR71XX_SPI_REG_FS, 0);
}