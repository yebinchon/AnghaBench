#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  rxfilter; TYPE_1__ eeprom; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MT_CH_TIME_CFG ; 
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ; 
 int MT_CH_TIME_CFG_NAV_AS_BUSY ; 
 int MT_CH_TIME_CFG_RX_AS_BUSY ; 
 int MT_CH_TIME_CFG_TIMER_EN ; 
 int MT_CH_TIME_CFG_TX_AS_BUSY ; 
 scalar_t__ MT_EE_MAC_ADDR ; 
 int /*<<< orphan*/  MT_RF_BBP_CR ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  MT_US_CYC_CFG ; 
 int /*<<< orphan*/  MT_US_CYC_CNT ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*) ; 
 int FUNC12 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt76x02_dev*) ; 
 int FUNC15 (struct mt76x02_dev*) ; 
 int FUNC16 (struct mt76x02_dev*) ; 
 int FUNC17 (struct mt76x02_dev*) ; 
 int FUNC18 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mt76x02_dev*) ; 

int FUNC20(struct mt76x02_dev *dev)
{
	int i, k, err;

	FUNC13(dev, true);
	FUNC19(dev);

	if (!FUNC9(&dev->mt76))
		return -ETIMEDOUT;

	err = FUNC17(dev);
	if (err < 0)
		return err;

	if (!FUNC0(dev, MT_WPDMA_GLO_CFG,
			    MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
			    MT_WPDMA_GLO_CFG_RX_DMA_BUSY, 0, 100))
		return -EIO;

	/* wait for asic ready after fw load. */
	if (!FUNC9(&dev->mt76))
		return -ETIMEDOUT;

	FUNC14(dev);

	err = FUNC18(dev);
	if (err < 0)
		return err;

	err = FUNC15(dev);
	if (err < 0)
		return err;

	FUNC4(dev, dev->mt76.eeprom.data + MT_EE_MAC_ADDR);
	dev->mt76.rxfilter = FUNC2(dev, MT_RX_FILTR_CFG);

	if (!FUNC10(&dev->mt76))
		return -ETIMEDOUT;

	/* reset wcid table */
	for (i = 0; i < 256; i++)
		FUNC6(dev, i, 0, NULL);

	/* reset shared key table and pairwise key table */
	for (i = 0; i < 16; i++) {
		for (k = 0; k < 4; k++)
			FUNC5(dev, i, k, NULL);
	}

	FUNC11(dev);

	FUNC1(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);
	FUNC3(dev, MT_TXOP_CTRL_CFG, 0x583f);

	err = FUNC12(dev, MT_RF_BBP_CR, 0, 0);
	if (err < 0)
		return err;

	FUNC7(dev);
	FUNC8(dev);

	FUNC3(dev, MT_CH_TIME_CFG,
		MT_CH_TIME_CFG_TIMER_EN |
		MT_CH_TIME_CFG_TX_AS_BUSY |
		MT_CH_TIME_CFG_RX_AS_BUSY |
		MT_CH_TIME_CFG_NAV_AS_BUSY |
		MT_CH_TIME_CFG_EIFS_AS_BUSY);

	return FUNC16(dev);
}