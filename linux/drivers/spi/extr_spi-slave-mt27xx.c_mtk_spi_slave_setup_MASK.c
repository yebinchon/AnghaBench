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
struct spi_device {int /*<<< orphan*/  master; } ;
struct mtk_spi_slave {scalar_t__ base; } ;

/* Variables and functions */
 int CMD_INVALID_EN ; 
 int CMD_INVALID_MASK ; 
 int DATA_DONE_EN ; 
 int DATA_DONE_MASK ; 
 int DMA_DONE_EN ; 
 int DMA_DONE_MASK ; 
 int RSTA_DONE_EN ; 
 int RSTA_DONE_MASK ; 
 scalar_t__ SPIS_IRQ_EN_REG ; 
 scalar_t__ SPIS_IRQ_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_spi_slave*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_spi_slave*) ; 
 struct mtk_spi_slave* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct mtk_spi_slave *mdata = FUNC2(spi->master);
	u32 reg_val;

	reg_val = DMA_DONE_EN | DATA_DONE_EN |
		  RSTA_DONE_EN | CMD_INVALID_EN;
	FUNC3(reg_val, mdata->base + SPIS_IRQ_EN_REG);

	reg_val = DMA_DONE_MASK | DATA_DONE_MASK |
		  RSTA_DONE_MASK | CMD_INVALID_MASK;
	FUNC3(reg_val, mdata->base + SPIS_IRQ_MASK_REG);

	FUNC0(mdata);
	FUNC1(mdata);

	return 0;
}