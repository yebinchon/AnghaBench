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
 int /*<<< orphan*/  MT_EXT_CCA_CFG ; 
 int /*<<< orphan*/  MT_FCE_L2_STUFF ; 
 int MT_FCE_L2_STUFF_WR_MPDU_LEN_EN ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MT_WMM_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  common_mac_reg_table ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mt76x0_mac_reg_table ; 

__attribute__((used)) static void FUNC4(struct mt76x02_dev *dev)
{
	FUNC0(dev, common_mac_reg_table);

	/* Enable PBF and MAC clock SYS_CTRL[11:10] = 0x3 */
	FUNC0(dev, mt76x0_mac_reg_table);

	/* Release BBP and MAC reset MAC_SYS_CTRL[1:0] = 0x0 */
	FUNC1(dev, MT_MAC_SYS_CTRL, 0x3);

	/* Set 0x141C[15:12]=0xF */
	FUNC3(dev, MT_EXT_CCA_CFG, 0xf000);

	FUNC1(dev, MT_FCE_L2_STUFF, MT_FCE_L2_STUFF_WR_MPDU_LEN_EN);

	/*
	 * tx_ring 9 is for mgmt frame
	 * tx_ring 8 is for in-band command frame.
	 * WMM_RG0_TXQMA: this register setting is for FCE to
	 *		  define the rule of tx_ring 9
	 * WMM_RG1_TXQMA: this register setting is for FCE to
	 *		  define the rule of tx_ring 8
	 */
	FUNC2(dev, MT_WMM_CTRL, 0x3ff, 0x201);
}