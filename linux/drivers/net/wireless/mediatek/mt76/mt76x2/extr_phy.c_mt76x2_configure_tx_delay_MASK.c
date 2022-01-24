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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_SW_CFG0 ; 
 int /*<<< orphan*/  MT_TX_SW_CFG1 ; 
 int /*<<< orphan*/  MT_XIFS_TIME_CFG ; 
 int /*<<< orphan*/  MT_XIFS_TIME_CFG_OFDM_SIFS ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct mt76x02_dev*,int) ; 

void FUNC3(struct mt76x02_dev *dev,
			       enum nl80211_band band, u8 bw)
{
	u32 cfg0, cfg1;

	if (FUNC2(dev, band)) {
		cfg0 = bw ? 0x000b0c01 : 0x00101101;
		cfg1 = 0x00011414;
	} else {
		cfg0 = bw ? 0x000b0b01 : 0x00101001;
		cfg1 = 0x00021414;
	}
	FUNC1(dev, MT_TX_SW_CFG0, cfg0);
	FUNC1(dev, MT_TX_SW_CFG1, cfg1);

	FUNC0(dev, MT_XIFS_TIME_CFG, MT_XIFS_TIME_CFG_OFDM_SIFS, 15);
}