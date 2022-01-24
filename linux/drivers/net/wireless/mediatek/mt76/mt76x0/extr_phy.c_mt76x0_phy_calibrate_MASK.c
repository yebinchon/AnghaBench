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
typedef  int u32 ;
struct TYPE_3__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBI ; 
 int /*<<< orphan*/  MCU_CAL_FULL ; 
 int /*<<< orphan*/  MCU_CAL_LC ; 
 int /*<<< orphan*/  MCU_CAL_R ; 
 int /*<<< orphan*/  MCU_CAL_RXDCOC ; 
 int /*<<< orphan*/  MCU_CAL_VCO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_0 ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

void FUNC9(struct mt76x02_dev *dev, bool power_on)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	int is_5ghz = (chan->band == NL80211_BAND_5GHZ) ? 1 : 0;
	u32 val, tx_alc, reg_val;

	if (FUNC1(dev))
		return;

	if (power_on) {
		FUNC5(dev, MCU_CAL_R, 0);
		FUNC5(dev, MCU_CAL_VCO, chan->hw_value);
		FUNC8(10, 20);

		if (FUNC7(dev)) {
			FUNC4(dev, MT_MAC_SYS_CTRL,
				MT_MAC_SYS_CTRL_ENABLE_RX);
			FUNC6(dev);
			FUNC4(dev, MT_MAC_SYS_CTRL,
				MT_MAC_SYS_CTRL_ENABLE_TX |
				MT_MAC_SYS_CTRL_ENABLE_RX);
		}
	}

	tx_alc = FUNC3(dev, MT_TX_ALC_CFG_0);
	FUNC4(dev, MT_TX_ALC_CFG_0, 0);
	FUNC8(500, 700);

	reg_val = FUNC3(dev, FUNC0(IBI, 9));
	FUNC4(dev, FUNC0(IBI, 9), 0xffffff7e);

	if (is_5ghz) {
		if (chan->hw_value < 100)
			val = 0x701;
		else if (chan->hw_value < 140)
			val = 0x801;
		else
			val = 0x901;
	} else {
		val = 0x600;
	}

	FUNC5(dev, MCU_CAL_FULL, val);
	FUNC2(350);
	FUNC5(dev, MCU_CAL_LC, is_5ghz);
	FUNC8(15000, 20000);

	FUNC4(dev, FUNC0(IBI, 9), reg_val);
	FUNC4(dev, MT_TX_ALC_CFG_0, tx_alc);
	FUNC5(dev, MCU_CAL_RXDCOC, 1);
}