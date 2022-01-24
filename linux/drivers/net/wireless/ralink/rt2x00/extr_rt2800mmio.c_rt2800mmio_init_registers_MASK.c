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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_CTRL ; 
 int /*<<< orphan*/  AUX_CTRL_FORCE_PCIE_CLK ; 
 int /*<<< orphan*/  AUX_CTRL_WAKE_PCIE_EN ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_RESET_BBP ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  PBF_SYS_CTRL ; 
 int /*<<< orphan*/  PWR_PIN_CFG ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DRX_IDX0 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX0 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX1 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX2 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX3 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX4 ; 
 int /*<<< orphan*/  WPDMA_RST_IDX_DTX_IDX5 ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	/*
	 * Reset DMA indexes
	 */
	reg = FUNC3(rt2x00dev, WPDMA_RST_IDX);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX0, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX1, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX2, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX3, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX4, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DTX_IDX5, 1);
	FUNC2(&reg, WPDMA_RST_IDX_DRX_IDX0, 1);
	FUNC4(rt2x00dev, WPDMA_RST_IDX, reg);

	FUNC4(rt2x00dev, PBF_SYS_CTRL, 0x00000e1f);
	FUNC4(rt2x00dev, PBF_SYS_CTRL, 0x00000e00);

	if (FUNC0(rt2x00dev) &&
	    (FUNC1(rt2x00dev, RT3090) ||
	     FUNC1(rt2x00dev, RT3390) ||
	     FUNC1(rt2x00dev, RT3572) ||
	     FUNC1(rt2x00dev, RT3593) ||
	     FUNC1(rt2x00dev, RT5390) ||
	     FUNC1(rt2x00dev, RT5392) ||
	     FUNC1(rt2x00dev, RT5592))) {
		reg = FUNC3(rt2x00dev, AUX_CTRL);
		FUNC2(&reg, AUX_CTRL_FORCE_PCIE_CLK, 1);
		FUNC2(&reg, AUX_CTRL_WAKE_PCIE_EN, 1);
		FUNC4(rt2x00dev, AUX_CTRL, reg);
	}

	FUNC4(rt2x00dev, PWR_PIN_CFG, 0x00000003);

	reg = 0;
	FUNC2(&reg, MAC_SYS_CTRL_RESET_CSR, 1);
	FUNC2(&reg, MAC_SYS_CTRL_RESET_BBP, 1);
	FUNC4(rt2x00dev, MAC_SYS_CTRL, reg);

	FUNC4(rt2x00dev, MAC_SYS_CTRL, 0x00000000);

	return 0;
}