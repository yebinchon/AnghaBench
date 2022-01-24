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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_AUTO_RSP_CFG ; 
 int /*<<< orphan*/  MT_COEXCFG0 ; 
 int MT_COEXCFG0_COEX_EN ; 
 int /*<<< orphan*/  MT_EXT_CCA_CFG ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_RESET_BBP ; 
 int MT_MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  MT_MAX_LEN_CFG ; 
 int /*<<< orphan*/  MT_PBF_RX_MAX_PCNT ; 
 int /*<<< orphan*/  MT_PBF_TX_MAX_PCNT ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_4 ; 
 int /*<<< orphan*/  MT_TX_LINK_CFG ; 
 int /*<<< orphan*/  MT_WMM_AIFSN ; 
 int /*<<< orphan*/  MT_WMM_CWMAX ; 
 int /*<<< orphan*/  MT_WMM_CWMIN ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 

int FUNC7(struct mt76x02_dev *dev)
{
	FUNC4(dev, MT_WPDMA_GLO_CFG, FUNC0(4) | FUNC0(5));

	/* init pbf regs */
	FUNC4(dev, MT_PBF_TX_MAX_PCNT, 0xefef3f1f);
	FUNC4(dev, MT_PBF_RX_MAX_PCNT, 0xfebf);

	FUNC5(dev);

	FUNC4(dev, MT_TX_LINK_CFG, 0x1020);
	FUNC4(dev, MT_AUTO_RSP_CFG, 0x13);
	FUNC4(dev, MT_MAX_LEN_CFG, 0x2f00);

	FUNC4(dev, MT_WMM_AIFSN, 0x2273);
	FUNC4(dev, MT_WMM_CWMIN, 0x2344);
	FUNC4(dev, MT_WMM_CWMAX, 0x34aa);

	FUNC2(dev, MT_MAC_SYS_CTRL,
		   MT_MAC_SYS_CTRL_RESET_CSR |
		   MT_MAC_SYS_CTRL_RESET_BBP);

	if (FUNC1(dev))
		FUNC2(dev, MT_COEXCFG0, MT_COEXCFG0_COEX_EN);

	FUNC3(dev, MT_EXT_CCA_CFG, 0xf000);
	FUNC2(dev, MT_TX_ALC_CFG_4, FUNC0(31));

	FUNC6(dev);

	return 0;
}