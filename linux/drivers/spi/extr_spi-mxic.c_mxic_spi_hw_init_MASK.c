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
struct mxic_spi {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DATA_STROB ; 
 scalar_t__ HC_CFG ; 
 int FUNC0 (int) ; 
 int HC_CFG_MAN_CS_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_CFG_TYPE_SPI_NAND ; 
 scalar_t__ HC_EN ; 
 int INT_STS_ALL ; 
 scalar_t__ INT_STS_EN ; 
 scalar_t__ LRD_CFG ; 
 scalar_t__ LRD_CTRL ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mxic_spi *mxic)
{
	FUNC4(0, mxic->regs + DATA_STROB);
	FUNC4(INT_STS_ALL, mxic->regs + INT_STS_EN);
	FUNC4(0, mxic->regs + HC_EN);
	FUNC4(0, mxic->regs + LRD_CFG);
	FUNC4(0, mxic->regs + LRD_CTRL);
	FUNC4(FUNC1(1) | FUNC3(0, HC_CFG_TYPE_SPI_NAND) |
	       FUNC2(0) | HC_CFG_MAN_CS_EN | FUNC0(1),
	       mxic->regs + HC_CFG);
}