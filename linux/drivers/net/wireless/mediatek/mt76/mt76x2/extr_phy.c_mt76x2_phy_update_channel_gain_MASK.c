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
typedef  void* u8 ;
typedef  int u32 ;
struct TYPE_7__ {void** agc_gain_init; int avg_rssi_all; int low_gain; void** agc_gain_cur; void* agc_gain_adjust; } ;
struct TYPE_6__ {scalar_t__ width; TYPE_1__* chan; } ;
struct TYPE_8__ {TYPE_2__ chandef; } ;
struct mt76x02_dev {TYPE_3__ cal; TYPE_4__ mt76; } ;
struct TYPE_5__ {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_RX_STAT_1 ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_CHAN_WIDTH_80 ; 
 int /*<<< orphan*/  RXO ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt76x02_dev*) ; 
 int FUNC5 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC6 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 

void FUNC9(struct mt76x02_dev *dev)
{
	u8 *gain = dev->cal.agc_gain_init;
	u8 low_gain_delta, gain_delta;
	u32 agc_35, agc_37;
	bool gain_change;
	int low_gain;
	u32 val;

	dev->cal.avg_rssi_all = FUNC1(&dev->mt76);
	if (!dev->cal.avg_rssi_all)
		dev->cal.avg_rssi_all = -75;

	low_gain = (dev->cal.avg_rssi_all > FUNC5(dev)) +
		(dev->cal.avg_rssi_all > FUNC4(dev));

	gain_change = dev->cal.low_gain < 0 ||
		      (dev->cal.low_gain & 2) ^ (low_gain & 2);
	dev->cal.low_gain = low_gain;

	if (!gain_change) {
		if (FUNC6(dev))
			FUNC8(dev);
		return;
	}

	if (dev->mt76.chandef.width == NL80211_CHAN_WIDTH_80) {
		FUNC3(dev, FUNC0(RXO, 14), 0x00560211);
		val = FUNC2(dev, FUNC0(AGC, 26)) & ~0xf;
		if (low_gain == 2)
			val |= 0x3;
		else
			val |= 0x5;
		FUNC3(dev, FUNC0(AGC, 26), val);
	} else {
		FUNC3(dev, FUNC0(RXO, 14), 0x00560423);
	}

	if (FUNC7(dev))
		low_gain_delta = 10;
	else
		low_gain_delta = 14;

	agc_37 = 0x2121262c;
	if (dev->mt76.chandef.chan->band == NL80211_BAND_2GHZ)
		agc_35 = 0x11111516;
	else if (low_gain == 2)
		agc_35 = agc_37 = 0x08080808;
	else if (dev->mt76.chandef.width == NL80211_CHAN_WIDTH_80)
		agc_35 = 0x10101014;
	else
		agc_35 = 0x11111116;

	if (low_gain == 2) {
		FUNC3(dev, FUNC0(RXO, 18), 0xf000a990);
		FUNC3(dev, FUNC0(AGC, 35), 0x08080808);
		FUNC3(dev, FUNC0(AGC, 37), 0x08080808);
		gain_delta = low_gain_delta;
		dev->cal.agc_gain_adjust = 0;
	} else {
		FUNC3(dev, FUNC0(RXO, 18), 0xf000a991);
		gain_delta = 0;
		dev->cal.agc_gain_adjust = low_gain_delta;
	}

	FUNC3(dev, FUNC0(AGC, 35), agc_35);
	FUNC3(dev, FUNC0(AGC, 37), agc_37);

	dev->cal.agc_gain_cur[0] = gain[0] - gain_delta;
	dev->cal.agc_gain_cur[1] = gain[1] - gain_delta;
	FUNC8(dev);

	/* clear false CCA counters */
	FUNC2(dev, MT_RX_STAT_1);
}