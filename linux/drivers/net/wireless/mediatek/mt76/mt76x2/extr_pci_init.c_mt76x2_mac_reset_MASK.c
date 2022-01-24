#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * macaddr; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int FUNC1 (int,int) ; 
 int MT_CH_CCA_RC_EN ; 
 scalar_t__ MT_CH_TIME_CFG ; 
 int MT_CH_TIME_CFG_CH_TIMER_CLR ; 
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ; 
 int MT_CH_TIME_CFG_NAV_AS_BUSY ; 
 int MT_CH_TIME_CFG_RX_AS_BUSY ; 
 int MT_CH_TIME_CFG_TIMER_EN ; 
 int MT_CH_TIME_CFG_TX_AS_BUSY ; 
 int /*<<< orphan*/  MT_COEXCFG0 ; 
 int MT_COEXCFG0_COEX_EN ; 
 int /*<<< orphan*/  MT_EXT_CCA_CFG ; 
 int /*<<< orphan*/  MT_FCE_L2_STUFF ; 
 int MT_FCE_L2_STUFF_WR_MPDU_LEN_EN ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_RESET_BBP ; 
 int MT_MAC_SYS_CTRL_RESET_CSR ; 
 int MT_MAX_VIFS ; 
 scalar_t__ MT_MCU_CLOCK_CTL ; 
 scalar_t__ MT_RF_BYPASS_0 ; 
 scalar_t__ MT_RF_SETTING_0 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_4 ; 
 scalar_t__ MT_TX_STAT_FIFO ; 
 int FUNC2 (int) ; 
 scalar_t__ MT_WCID_DROP_BASE ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 scalar_t__ FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mt76x02_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 

int FUNC19(struct mt76x02_dev *dev, bool hard)
{
	const u8 *macaddr = dev->mt76.macaddr;
	u32 val;
	int i, k;

	if (!FUNC14(&dev->mt76))
		return -ETIMEDOUT;

	val = FUNC6(dev, MT_WPDMA_GLO_CFG);

	val &= ~(MT_WPDMA_GLO_CFG_TX_DMA_EN |
		 MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
		 MT_WPDMA_GLO_CFG_RX_DMA_EN |
		 MT_WPDMA_GLO_CFG_RX_DMA_BUSY |
		 MT_WPDMA_GLO_CFG_DMA_BURST_SIZE);
	val |= FUNC1(MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 3);

	FUNC8(dev, MT_WPDMA_GLO_CFG, val);

	FUNC17(dev);
	FUNC9(dev);
	FUNC16(dev);

	FUNC5(dev, MT_MAC_SYS_CTRL,
		   MT_MAC_SYS_CTRL_RESET_CSR |
		   MT_MAC_SYS_CTRL_RESET_BBP);

	if (FUNC4(dev))
		FUNC5(dev, MT_COEXCFG0, MT_COEXCFG0_COEX_EN);

	FUNC7(dev, MT_EXT_CCA_CFG, 0x0000f000);
	FUNC5(dev, MT_TX_ALC_CFG_4, FUNC0(31));

	FUNC8(dev, MT_RF_BYPASS_0, 0x06000000);
	FUNC8(dev, MT_RF_SETTING_0, 0x08800000);
	FUNC18(5000, 10000);
	FUNC8(dev, MT_RF_BYPASS_0, 0x00000000);

	FUNC8(dev, MT_MCU_CLOCK_CTL, 0x1401);
	FUNC5(dev, MT_FCE_L2_STUFF, MT_FCE_L2_STUFF_WR_MPDU_LEN_EN);

	FUNC10(dev, macaddr);
	FUNC15(dev);
	if (!hard)
		return 0;

	for (i = 0; i < 256 / 32; i++)
		FUNC8(dev, MT_WCID_DROP_BASE + i * 4, 0);

	for (i = 0; i < 256; i++) {
		FUNC12(dev, i, 0, NULL);
		FUNC8(dev, FUNC3(i), 0);
		FUNC8(dev, FUNC3(i) + 4, 0);
	}

	for (i = 0; i < MT_MAX_VIFS; i++)
		FUNC12(dev, FUNC2(i), i, NULL);

	for (i = 0; i < 16; i++)
		for (k = 0; k < 4; k++)
			FUNC11(dev, i, k, NULL);

	for (i = 0; i < 16; i++)
		FUNC6(dev, MT_TX_STAT_FIFO);

	FUNC8(dev, MT_CH_TIME_CFG,
		MT_CH_TIME_CFG_TIMER_EN |
		MT_CH_TIME_CFG_TX_AS_BUSY |
		MT_CH_TIME_CFG_RX_AS_BUSY |
		MT_CH_TIME_CFG_NAV_AS_BUSY |
		MT_CH_TIME_CFG_EIFS_AS_BUSY |
		MT_CH_CCA_RC_EN |
		FUNC1(MT_CH_TIME_CFG_CH_TIMER_CLR, 1));

	FUNC13(dev);

	return 0;
}