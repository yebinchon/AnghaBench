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
struct mxic_spi {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HC_CFG ; 
 int HC_CFG_MAN_CS_ASSERT ; 
 int HC_CFG_MAN_CS_EN ; 
 scalar_t__ HC_EN ; 
 int HC_EN_BIT ; 
 int FUNC0 (scalar_t__) ; 
 struct mxic_spi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, bool lvl)
{
	struct mxic_spi *mxic = FUNC1(spi->master);

	if (!lvl) {
		FUNC2(FUNC0(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_EN,
		       mxic->regs + HC_CFG);
		FUNC2(HC_EN_BIT, mxic->regs + HC_EN);
		FUNC2(FUNC0(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
		       mxic->regs + HC_CFG);
	} else {
		FUNC2(FUNC0(mxic->regs + HC_CFG) & ~HC_CFG_MAN_CS_ASSERT,
		       mxic->regs + HC_CFG);
		FUNC2(0, mxic->regs + HC_EN);
	}
}