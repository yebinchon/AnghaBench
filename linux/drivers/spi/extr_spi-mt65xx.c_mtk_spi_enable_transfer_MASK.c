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
struct spi_master {int dummy; } ;
struct mtk_spi {scalar_t__ state; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MTK_SPI_IDLE ; 
 int /*<<< orphan*/  SPI_CMD_ACT ; 
 scalar_t__ SPI_CMD_REG ; 
 int /*<<< orphan*/  SPI_CMD_RESUME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mtk_spi* FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_master *master)
{
	u32 cmd;
	struct mtk_spi *mdata = FUNC1(master);

	cmd = FUNC0(mdata->base + SPI_CMD_REG);
	if (mdata->state == MTK_SPI_IDLE)
		cmd |= SPI_CMD_ACT;
	else
		cmd |= SPI_CMD_RESUME;
	FUNC2(cmd, mdata->base + SPI_CMD_REG);
}