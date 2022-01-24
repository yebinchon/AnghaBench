#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  hw; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {int /*<<< orphan*/  cal_work; TYPE_2__ mt76; } ;
struct cfg80211_chan_def {int center_freq1; int const width; TYPE_1__* chan; } ;
struct TYPE_3__ {int center_freq; int hw_value; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CORE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  MT76_SCANNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_CALIBRATE_INTERVAL ; 
 int /*<<< orphan*/  MT_EXT_CCA_CFG ; 
 int MT_EXT_CCA_CFG_CCA0 ; 
 int MT_EXT_CCA_CFG_CCA1 ; 
 int MT_EXT_CCA_CFG_CCA2 ; 
 int MT_EXT_CCA_CFG_CCA3 ; 
 int MT_EXT_CCA_CFG_CCA_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_TX_SW_CFG0 ; 
#define  NL80211_CHAN_WIDTH_40 129 
#define  NL80211_CHAN_WIDTH_80 128 
 int /*<<< orphan*/  RF_A_BAND ; 
 int /*<<< orphan*/  RF_BW_20 ; 
 int /*<<< orphan*/  RF_BW_40 ; 
 int /*<<< orphan*/  RF_BW_80 ; 
 int /*<<< orphan*/  RF_G_BAND ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*,int const,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt76x02_dev*,int const) ; 
 int /*<<< orphan*/  FUNC15 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mt76x02_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC23(struct mt76x02_dev *dev,
			    struct cfg80211_chan_def *chandef)
{
	u32 ext_cca_chan[4] = {
		[0] = FUNC1(MT_EXT_CCA_CFG_CCA0, 0) |
		      FUNC1(MT_EXT_CCA_CFG_CCA1, 1) |
		      FUNC1(MT_EXT_CCA_CFG_CCA2, 2) |
		      FUNC1(MT_EXT_CCA_CFG_CCA3, 3) |
		      FUNC1(MT_EXT_CCA_CFG_CCA_MASK, FUNC0(0)),
		[1] = FUNC1(MT_EXT_CCA_CFG_CCA0, 1) |
		      FUNC1(MT_EXT_CCA_CFG_CCA1, 0) |
		      FUNC1(MT_EXT_CCA_CFG_CCA2, 2) |
		      FUNC1(MT_EXT_CCA_CFG_CCA3, 3) |
		      FUNC1(MT_EXT_CCA_CFG_CCA_MASK, FUNC0(1)),
		[2] = FUNC1(MT_EXT_CCA_CFG_CCA0, 2) |
		      FUNC1(MT_EXT_CCA_CFG_CCA1, 3) |
		      FUNC1(MT_EXT_CCA_CFG_CCA2, 1) |
		      FUNC1(MT_EXT_CCA_CFG_CCA3, 0) |
		      FUNC1(MT_EXT_CCA_CFG_CCA_MASK, FUNC0(2)),
		[3] = FUNC1(MT_EXT_CCA_CFG_CCA0, 3) |
		      FUNC1(MT_EXT_CCA_CFG_CCA1, 2) |
		      FUNC1(MT_EXT_CCA_CFG_CCA2, 1) |
		      FUNC1(MT_EXT_CCA_CFG_CCA3, 0) |
		      FUNC1(MT_EXT_CCA_CFG_CCA_MASK, FUNC0(3)),
	};
	bool scan = FUNC22(MT76_SCANNING, &dev->mt76.state);
	int ch_group_index, freq, freq1;
	u8 channel;
	u32 val;
	u16 rf_bw_band;

	freq = chandef->chan->center_freq;
	freq1 = chandef->center_freq1;
	channel = chandef->chan->hw_value;
	rf_bw_band = (channel <= 14) ? RF_G_BAND : RF_A_BAND;

	switch (chandef->width) {
	case NL80211_CHAN_WIDTH_40:
		if (freq1 > freq)
			ch_group_index = 0;
		else
			ch_group_index = 1;
		channel += 2 - ch_group_index * 4;
		rf_bw_band |= RF_BW_40;
		break;
	case NL80211_CHAN_WIDTH_80:
		ch_group_index = (freq - freq1 + 30) / 20;
		if (FUNC4(ch_group_index < 0 || ch_group_index > 3))
			ch_group_index = 0;
		channel += 6 - ch_group_index * 4;
		rf_bw_band |= RF_BW_80;
		break;
	default:
		ch_group_index = 0;
		rf_bw_band |= RF_BW_20;
		break;
	}

	if (FUNC7(dev)) {
		FUNC14(dev, chandef->width);
	} else {
		if (chandef->width == NL80211_CHAN_WIDTH_80 ||
		    chandef->width == NL80211_CHAN_WIDTH_40)
			val = 0x201;
		else
			val = 0x601;
		FUNC10(dev, MT_TX_SW_CFG0, val);
	}
	FUNC13(dev, chandef->width, ch_group_index);
	FUNC12(dev, chandef->chan->band,
			     ch_group_index & 1);

	FUNC8(dev, MT_EXT_CCA_CFG,
		 (MT_EXT_CCA_CFG_CCA0 |
		  MT_EXT_CCA_CFG_CCA1 |
		  MT_EXT_CCA_CFG_CCA2 |
		  MT_EXT_CCA_CFG_CCA3 |
		  MT_EXT_CCA_CFG_CCA_MASK),
		 ext_cca_chan[ch_group_index]);

	FUNC16(dev, chandef->chan->band);
	FUNC18(dev, channel, rf_bw_band);

	/* set Japan Tx filter at channel 14 */
	if (channel == 14)
		FUNC9(dev, FUNC2(CORE, 1), 0x20);
	else
		FUNC6(dev, FUNC2(CORE, 1), 0x20);

	FUNC20(dev);
	FUNC17(dev, rf_bw_band);

	/* enable vco */
	FUNC21(dev, FUNC3(0, 4), FUNC0(7));
	if (scan)
		return;

	FUNC11(dev);
	FUNC15(dev, false);
	FUNC19(dev);

	FUNC5(dev->mt76.hw, &dev->cal_work,
				     MT_CALIBRATE_INTERVAL);
}