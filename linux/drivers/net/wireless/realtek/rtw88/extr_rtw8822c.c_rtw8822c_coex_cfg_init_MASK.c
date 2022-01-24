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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_BTCCA_CTRL ; 
 int /*<<< orphan*/  BIT_BT_AOD_GPIO3 ; 
 int /*<<< orphan*/  BIT_BT_PTA_EN ; 
 int BIT_EN_BCN_FUNCTION ; 
 int BIT_GNT_BT_POLARITY ; 
 int /*<<< orphan*/  BIT_PTA_EDCCA_EN ; 
 int BIT_PTA_WL_TX_EN ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_BT_COEX_V2 ; 
 int /*<<< orphan*/  REG_BT_STAT_CTRL ; 
 int /*<<< orphan*/  REG_BT_TDMA_TIME ; 
 int /*<<< orphan*/  REG_DUMMY_PAGE4_V1 ; 
 int /*<<< orphan*/  REG_GPIO_MUXCFG ; 
 int /*<<< orphan*/  REG_QUEUE_CTRL ; 
 int /*<<< orphan*/  RF_PATH_B ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct rtw_dev *rtwdev)
{
	/* enable TBTT nterrupt */
	FUNC3(rtwdev, REG_BCN_CTRL, BIT_EN_BCN_FUNCTION);

	/* BT report packet sample rate	 */
	/* 0x790[5:0]=0x5 */
	FUNC3(rtwdev, REG_BT_TDMA_TIME, 0x05);

	/* enable BT counter statistics */
	FUNC1(rtwdev, REG_BT_STAT_CTRL, 0x1);

	/* enable PTA (3-wire function form BT side) */
	FUNC0(rtwdev, REG_GPIO_MUXCFG, BIT_BT_PTA_EN);
	FUNC0(rtwdev, REG_GPIO_MUXCFG, BIT_BT_AOD_GPIO3);

	/* enable PTA (tx/rx signal form WiFi side) */
	FUNC3(rtwdev, REG_QUEUE_CTRL, BIT_PTA_WL_TX_EN);
	/* wl tx signal to PTA not case EDCCA */
	FUNC2(rtwdev, REG_QUEUE_CTRL, BIT_PTA_EDCCA_EN);
	/* GNT_BT=1 while select both */
	FUNC3(rtwdev, REG_BT_COEX_V2, BIT_GNT_BT_POLARITY);
	/* BT_CCA = ~GNT_WL_BB, (not or GNT_BT_BB, LTE_Rx */
	FUNC2(rtwdev, REG_DUMMY_PAGE4_V1, BIT_BTCCA_CTRL);

	/* to avoid RF parameter error */
	FUNC4(rtwdev, RF_PATH_B, 0x1, 0xfffff, 0x40000);
}