#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  mcu_gain; } ;
struct TYPE_8__ {int channel_cal_done; int init_cal_done; int tssi_cal_done; TYPE_1__ rx; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_7__ {TYPE_2__ chandef; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {int /*<<< orphan*/  cal_work; TYPE_4__ cal; TYPE_3__ mt76; } ;
struct ieee80211_channel {int hw_value; int center_freq; scalar_t__ band; } ;
struct cfg80211_chan_def {int center_freq1; int /*<<< orphan*/  width; struct ieee80211_channel* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  MCU_CAL_R ; 
 int /*<<< orphan*/  MCU_CAL_RC ; 
 int /*<<< orphan*/  MCU_CAL_RXDCOC ; 
 int /*<<< orphan*/  MCU_CAL_TSSI ; 
 scalar_t__ MT76XX_REV_E3 ; 
 int /*<<< orphan*/  MT76_SCANNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_CALIBRATE_INTERVAL ; 
 int /*<<< orphan*/  MT_EE_BT_RCAL_RESULT ; 
 int /*<<< orphan*/  MT_EXT_CCA_CFG ; 
 int MT_EXT_CCA_CFG_CCA0 ; 
 int MT_EXT_CCA_CFG_CCA1 ; 
 int MT_EXT_CCA_CFG_CCA2 ; 
 int MT_EXT_CCA_CFG_CCA3 ; 
 int MT_EXT_CCA_CFG_CCA_MASK ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_1 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_1_TEMP_COMP ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_2 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_2_TEMP_COMP ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
#define  NL80211_CHAN_WIDTH_40 129 
#define  NL80211_CHAN_WIDTH_80 128 
 int /*<<< orphan*/  RXO ; 
 int /*<<< orphan*/  TXO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct mt76x02_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt76x02_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mt76x02_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (struct mt76x02_dev*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct mt76x02_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct mt76x02_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC23 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct mt76x02_dev*,int) ; 
 scalar_t__ FUNC25 (struct mt76x02_dev*) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC27(struct mt76x02_dev *dev,
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
	bool scan = FUNC26(MT76_SCANNING, &dev->mt76.state);
	struct ieee80211_channel *chan = chandef->chan;
	u8 channel = chan->hw_value, bw, bw_index;
	int ch_group_index, freq, freq1, ret;

	dev->cal.channel_cal_done = false;
	freq = chandef->chan->center_freq;
	freq1 = chandef->center_freq1;

	switch (chandef->width) {
	case NL80211_CHAN_WIDTH_40:
		bw = 1;
		if (freq1 > freq) {
			bw_index = 1;
			ch_group_index = 0;
		} else {
			bw_index = 3;
			ch_group_index = 1;
		}
		channel += 2 - ch_group_index * 4;
		break;
	case NL80211_CHAN_WIDTH_80:
		ch_group_index = (freq - freq1 + 30) / 20;
		if (FUNC3(ch_group_index < 0 || ch_group_index > 3))
			ch_group_index = 0;
		bw = 2;
		bw_index = ch_group_index;
		channel += 6 - ch_group_index * 4;
		break;
	default:
		bw = 0;
		bw_index = 0;
		ch_group_index = 0;
		break;
	}

	FUNC22(dev);
	FUNC21(dev, chan->band);
	FUNC17(dev, chan->band, bw);
	FUNC20(dev);

	FUNC14(dev, chan->band, ch_group_index & 1);
	FUNC15(dev, chandef->width, ch_group_index);

	FUNC6(dev, MT_EXT_CCA_CFG,
		 (MT_EXT_CCA_CFG_CCA0 |
		  MT_EXT_CCA_CFG_CCA1 |
		  MT_EXT_CCA_CFG_CCA2 |
		  MT_EXT_CCA_CFG_CCA3 |
		  MT_EXT_CCA_CFG_CCA_MASK),
		 ext_cca_chan[ch_group_index]);

	ret = FUNC19(dev, channel, bw, bw_index, scan);
	if (ret)
		return ret;

	FUNC18(dev, channel, dev->cal.rx.mcu_gain, true);

	/* Enable LDPC Rx */
	if (FUNC25(dev) >= MT76XX_REV_E3)
		FUNC8(dev, FUNC2(RXO, 13), FUNC0(10));

	if (!dev->cal.init_cal_done) {
		u8 val = FUNC10(dev, MT_EE_BT_RCAL_RESULT);

		if (val != 0xff)
			FUNC13(dev, MCU_CAL_R, 0);
	}

	FUNC13(dev, MCU_CAL_RXDCOC, channel);

	/* Rx LPF calibration */
	if (!dev->cal.init_cal_done)
		FUNC13(dev, MCU_CAL_RC, 0);
	dev->cal.init_cal_done = true;

	FUNC9(dev, FUNC2(AGC, 61), 0xff64a4e2);
	FUNC9(dev, FUNC2(AGC, 7), 0x08081010);
	FUNC9(dev, FUNC2(AGC, 11), 0x00000404);
	FUNC9(dev, FUNC2(AGC, 2), 0x00007070);
	FUNC9(dev, MT_TXOP_CTRL_CFG, 0X04101b3f);

	FUNC8(dev, FUNC2(TXO, 4), FUNC0(25));
	FUNC8(dev, FUNC2(RXO, 13), FUNC0(8));

	if (scan)
		return 0;

	FUNC24(dev, true);
	FUNC12(dev);

	if (FUNC23(dev)) {
		/* init default values for temp compensation */
		FUNC7(dev, MT_TX_ALC_CFG_1, MT_TX_ALC_CFG_1_TEMP_COMP,
			       0x38);
		FUNC7(dev, MT_TX_ALC_CFG_2, MT_TX_ALC_CFG_2_TEMP_COMP,
			       0x38);

		/* init tssi calibration */
		if (!FUNC16(dev)) {
			struct ieee80211_channel *chan;
			u32 flag = 0;

			chan = dev->mt76.chandef.chan;
			if (chan->band == NL80211_BAND_5GHZ)
				flag |= FUNC0(0);
			if (FUNC11(dev, chan->band))
				flag |= FUNC0(8);
			FUNC13(dev, MCU_CAL_TSSI, flag);
			dev->cal.tssi_cal_done = true;
		}
	}

	FUNC4(FUNC5(dev), &dev->cal_work,
				     MT_CALIBRATE_INTERVAL);
	return 0;
}