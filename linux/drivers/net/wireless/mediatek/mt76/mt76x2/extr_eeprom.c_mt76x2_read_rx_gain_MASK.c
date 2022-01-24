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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_7__ {int mcu_gain; int /*<<< orphan*/  lna_gain; } ;
struct TYPE_8__ {TYPE_3__ rx; } ;
struct TYPE_5__ {struct ieee80211_channel* chan; } ;
struct TYPE_6__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_4__ cal; TYPE_2__ mt76; } ;
struct ieee80211_channel {int hw_value; scalar_t__ band; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  MT_EE_RF_2G_RX_HIGH_GAIN ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int*,int*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,scalar_t__,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int) ; 

void FUNC7(struct mt76x02_dev *dev)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	int channel = chan->hw_value;
	s8 lna_5g[3], lna_2g;
	u8 lna;
	u16 val;

	if (chan->band == NL80211_BAND_2GHZ)
		val = FUNC0(dev, MT_EE_RF_2G_RX_HIGH_GAIN) >> 8;
	else
		val = FUNC4(dev, channel);

	FUNC6(dev, val);

	FUNC2(dev, chan->band, &val, &lna_2g, lna_5g);
	FUNC5(dev, 0, val);
	FUNC5(dev, 1, val >> 8);

	dev->cal.rx.mcu_gain =  (lna_2g & 0xff);
	dev->cal.rx.mcu_gain |= (lna_5g[0] & 0xff) << 8;
	dev->cal.rx.mcu_gain |= (lna_5g[1] & 0xff) << 16;
	dev->cal.rx.mcu_gain |= (lna_5g[2] & 0xff) << 24;

	lna = FUNC1(dev, &lna_2g, lna_5g, chan);
	dev->cal.rx.lna_gain = FUNC3(lna, 8);
}