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
typedef  int u16 ;
struct mt7601u_dev {int const* beacon_offsets; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_BEACON_TIME_CFG ; 
 int MT_BEACON_TIME_CFG_BEACON_TX ; 
 int MT_BEACON_TIME_CFG_SYNC_MODE ; 
 int MT_BEACON_TIME_CFG_TBTT_EN ; 
 int MT_BEACON_TIME_CFG_TIMER_EN ; 
 int /*<<< orphan*/  MT_BW_20 ; 
 int /*<<< orphan*/  MT_MAC_STATUS ; 
 int MT_MAC_STATUS_RX ; 
 int MT_MAC_STATUS_TX ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  MT_TXOP_EXT_CCA_DLY ; 
 int /*<<< orphan*/  MT_TXOP_TRUN_EN ; 
 int /*<<< orphan*/  MT_US_CYC_CFG ; 
 int /*<<< orphan*/  MT_US_CYC_CNT ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*) ; 
 int FUNC5 (struct mt7601u_dev*) ; 
 int FUNC6 (struct mt7601u_dev*) ; 
 int FUNC7 (struct mt7601u_dev*) ; 
 int FUNC8 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*) ; 
 int FUNC10 (struct mt7601u_dev*) ; 
 int FUNC11 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mt7601u_dev*) ; 
 int FUNC14 (struct mt7601u_dev*) ; 
 int FUNC15 (struct mt7601u_dev*) ; 
 int FUNC16 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC24 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC27(struct mt7601u_dev *dev)
{
	static const u16 beacon_offsets[16] = {
		/* 512 byte per beacon */
		0xc000,	0xc200,	0xc400,	0xc600,
		0xc800,	0xca00,	0xcc00,	0xce00,
		0xd000,	0xd200,	0xd400,	0xd600,
		0xd800,	0xda00,	0xdc00,	0xde00
	};
	int ret;

	dev->beacon_offsets = beacon_offsets;

	FUNC3(dev, true, false);

	ret = FUNC22(dev);
	if (ret)
		goto err;
	ret = FUNC15(dev);
	if (ret)
		goto err;

	if (!FUNC26(dev, MT_WPDMA_GLO_CFG,
			    MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
			    MT_WPDMA_GLO_CFG_RX_DMA_BUSY, 0, 100)) {
		ret = -EIO;
		goto err;
	}

	/* Wait for ASIC ready after FW load. */
	ret = FUNC22(dev);
	if (ret)
		goto err;

	FUNC18(dev);
	FUNC9(dev);

	ret = FUNC14(dev);
	if (ret)
		goto err;
	ret = FUNC5(dev);
	if (ret)
		goto err_mcu;
	ret = FUNC24(dev);
	if (ret)
		goto err_rx;

	if (!FUNC26(dev, MT_MAC_STATUS,
			    MT_MAC_STATUS_TX | MT_MAC_STATUS_RX, 0, 100)) {
		ret = -EIO;
		goto err_rx;
	}

	ret = FUNC7(dev);
	if (ret)
		goto err_rx;
	ret = FUNC11(dev);
	if (ret)
		goto err_rx;
	ret = FUNC8(dev);
	if (ret)
		goto err_rx;
	ret = FUNC10(dev);
	if (ret)
		goto err_rx;

	FUNC25(dev, MT_BEACON_TIME_CFG, (MT_BEACON_TIME_CFG_TIMER_EN |
					     MT_BEACON_TIME_CFG_SYNC_MODE |
					     MT_BEACON_TIME_CFG_TBTT_EN |
					     MT_BEACON_TIME_CFG_BEACON_TX));

	FUNC17(dev);

	FUNC19(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);

	FUNC23(dev, MT_TXOP_CTRL_CFG,
		   FUNC0(MT_TXOP_TRUN_EN, 0x3f) |
		   FUNC0(MT_TXOP_EXT_CCA_DLY, 0x58));

	ret = FUNC6(dev);
	if (ret)
		goto err_rx;

	ret = FUNC16(dev);
	if (ret)
		goto err_rx;

	FUNC20(dev, 0);
	FUNC21(dev, 0);

	FUNC12(dev, false);
	FUNC2(dev, false);
	FUNC1(dev, MT_BW_20);

	return 0;

err_rx:
	FUNC4(dev);
err_mcu:
	FUNC13(dev);
err:
	FUNC3(dev, false, false);
	return ret;
}