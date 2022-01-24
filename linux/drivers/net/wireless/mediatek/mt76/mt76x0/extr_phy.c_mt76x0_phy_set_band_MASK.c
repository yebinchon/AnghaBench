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
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_TX0_RF_GAIN_CORR ; 
 int /*<<< orphan*/  MT_TX_ALC_VGA3 ; 
#define  NL80211_BAND_2GHZ 129 
#define  NL80211_BAND_5GHZ 128 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mt76x0_rf_2g_channel_0_tab ; 
 int /*<<< orphan*/  mt76x0_rf_5g_channel_0_tab ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mt76x02_dev *dev, enum nl80211_band band)
{
	switch (band) {
	case NL80211_BAND_2GHZ:
		FUNC1(dev, mt76x0_rf_2g_channel_0_tab);

		FUNC3(dev, FUNC0(5, 0), 0x45);
		FUNC3(dev, FUNC0(6, 0), 0x44);

		FUNC2(dev, MT_TX_ALC_VGA3, 0x00050007);
		FUNC2(dev, MT_TX0_RF_GAIN_CORR, 0x003E0002);
		break;
	case NL80211_BAND_5GHZ:
		FUNC1(dev, mt76x0_rf_5g_channel_0_tab);

		FUNC3(dev, FUNC0(5, 0), 0x44);
		FUNC3(dev, FUNC0(6, 0), 0x45);

		FUNC2(dev, MT_TX_ALC_VGA3, 0x00000005);
		FUNC2(dev, MT_TX0_RF_GAIN_CORR, 0x01010102);
		break;
	default:
		break;
	}
}