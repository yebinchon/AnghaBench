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
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  MT_BB_PA_MODE_CFG0 ; 
 int /*<<< orphan*/  MT_BB_PA_MODE_CFG1 ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_ADJ0 ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_ADJ1 ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_CFG0 ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_CFG1 ; 
 int /*<<< orphan*/  MT_TX0_RF_GAIN_CORR ; 
 int /*<<< orphan*/  MT_TX1_RF_GAIN_CORR ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_2 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_3 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_4 ; 
 int NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*,int) ; 

void FUNC2(struct mt76x02_dev *dev,
				 enum nl80211_band band)
{
	u32 pa_mode[2];
	u32 pa_mode_adj;

	if (band == NL80211_BAND_2GHZ) {
		pa_mode[0] = 0x010055ff;
		pa_mode[1] = 0x00550055;

		FUNC0(dev, MT_TX_ALC_CFG_2, 0x35160a00);
		FUNC0(dev, MT_TX_ALC_CFG_3, 0x35160a06);

		if (FUNC1(dev, band)) {
			FUNC0(dev, MT_RF_PA_MODE_ADJ0, 0x0000ec00);
			FUNC0(dev, MT_RF_PA_MODE_ADJ1, 0x0000ec00);
		} else {
			FUNC0(dev, MT_RF_PA_MODE_ADJ0, 0xf4000200);
			FUNC0(dev, MT_RF_PA_MODE_ADJ1, 0xfa000200);
		}
	} else {
		pa_mode[0] = 0x0000ffff;
		pa_mode[1] = 0x00ff00ff;

		if (FUNC1(dev, band)) {
			FUNC0(dev, MT_TX_ALC_CFG_2, 0x2f0f0400);
			FUNC0(dev, MT_TX_ALC_CFG_3, 0x2f0f0476);
		} else {
			FUNC0(dev, MT_TX_ALC_CFG_2, 0x1b0f0400);
			FUNC0(dev, MT_TX_ALC_CFG_3, 0x1b0f0476);
		}

		if (FUNC1(dev, band))
			pa_mode_adj = 0x04000000;
		else
			pa_mode_adj = 0;

		FUNC0(dev, MT_RF_PA_MODE_ADJ0, pa_mode_adj);
		FUNC0(dev, MT_RF_PA_MODE_ADJ1, pa_mode_adj);
	}

	FUNC0(dev, MT_BB_PA_MODE_CFG0, pa_mode[0]);
	FUNC0(dev, MT_BB_PA_MODE_CFG1, pa_mode[1]);
	FUNC0(dev, MT_RF_PA_MODE_CFG0, pa_mode[0]);
	FUNC0(dev, MT_RF_PA_MODE_CFG1, pa_mode[1]);

	if (FUNC1(dev, band)) {
		u32 val;

		if (band == NL80211_BAND_2GHZ)
			val = 0x3c3c023c;
		else
			val = 0x363c023c;

		FUNC0(dev, MT_TX0_RF_GAIN_CORR, val);
		FUNC0(dev, MT_TX1_RF_GAIN_CORR, val);
		FUNC0(dev, MT_TX_ALC_CFG_4, 0x00001818);
	} else {
		if (band == NL80211_BAND_2GHZ) {
			u32 val = 0x0f3c3c3c;

			FUNC0(dev, MT_TX0_RF_GAIN_CORR, val);
			FUNC0(dev, MT_TX1_RF_GAIN_CORR, val);
			FUNC0(dev, MT_TX_ALC_CFG_4, 0x00000606);
		} else {
			FUNC0(dev, MT_TX0_RF_GAIN_CORR, 0x383c023c);
			FUNC0(dev, MT_TX1_RF_GAIN_CORR, 0x24282e28);
			FUNC0(dev, MT_TX_ALC_CFG_4, 0);
		}
	}
}