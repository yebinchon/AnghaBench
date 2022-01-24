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
struct spi_device {int /*<<< orphan*/  master; } ;
struct mtk_spi {int /*<<< orphan*/  state; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_SPI_IDLE ; 
 int /*<<< orphan*/  SPI_CMD_PAUSE_EN ; 
 scalar_t__ SPI_CMD_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_spi*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mtk_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, bool enable)
{
	u32 reg_val;
	struct mtk_spi *mdata = FUNC2(spi->master);

	reg_val = FUNC1(mdata->base + SPI_CMD_REG);
	if (!enable) {
		reg_val |= SPI_CMD_PAUSE_EN;
		FUNC3(reg_val, mdata->base + SPI_CMD_REG);
	} else {
		reg_val &= ~SPI_CMD_PAUSE_EN;
		FUNC3(reg_val, mdata->base + SPI_CMD_REG);
		mdata->state = MTK_SPI_IDLE;
		FUNC0(mdata);
	}
}