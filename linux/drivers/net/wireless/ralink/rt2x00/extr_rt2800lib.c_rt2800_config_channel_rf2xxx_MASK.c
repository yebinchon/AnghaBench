#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {int freq_offset; TYPE_1__ default_ant; } ;
struct rf_channel {int rf4; int rf2; int channel; int rf3; int rf1; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int default_power1; int default_power2; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF2_ANTENNA_RX1 ; 
 int /*<<< orphan*/  RF2_ANTENNA_RX2 ; 
 int /*<<< orphan*/  RF2_ANTENNA_TX1 ; 
 int /*<<< orphan*/  RF3_TXPOWER_A ; 
 int /*<<< orphan*/  RF3_TXPOWER_A_7DBM_BOOST ; 
 int /*<<< orphan*/  RF3_TXPOWER_G ; 
 int /*<<< orphan*/  RF4_FREQ_OFFSET ; 
 int /*<<< orphan*/  RF4_HT40 ; 
 int /*<<< orphan*/  RF4_TXPOWER_A ; 
 int /*<<< orphan*/  RF4_TXPOWER_A_7DBM_BOOST ; 
 int /*<<< orphan*/  RF4_TXPOWER_G ; 
 int FUNC0 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	FUNC2(&rf->rf4, RF4_FREQ_OFFSET, rt2x00dev->freq_offset);

	if (rt2x00dev->default_ant.tx_chain_num == 1)
		FUNC2(&rf->rf2, RF2_ANTENNA_TX1, 1);

	if (rt2x00dev->default_ant.rx_chain_num == 1) {
		FUNC2(&rf->rf2, RF2_ANTENNA_RX1, 1);
		FUNC2(&rf->rf2, RF2_ANTENNA_RX2, 1);
	} else if (rt2x00dev->default_ant.rx_chain_num == 2)
		FUNC2(&rf->rf2, RF2_ANTENNA_RX2, 1);

	if (rf->channel > 14) {
		/*
		 * When TX power is below 0, we should increase it by 7 to
		 * make it a positive value (Minimum value is -7).
		 * However this means that values between 0 and 7 have
		 * double meaning, and we should set a 7DBm boost flag.
		 */
		FUNC2(&rf->rf3, RF3_TXPOWER_A_7DBM_BOOST,
				   (info->default_power1 >= 0));

		if (info->default_power1 < 0)
			info->default_power1 += 7;

		FUNC2(&rf->rf3, RF3_TXPOWER_A, info->default_power1);

		FUNC2(&rf->rf4, RF4_TXPOWER_A_7DBM_BOOST,
				   (info->default_power2 >= 0));

		if (info->default_power2 < 0)
			info->default_power2 += 7;

		FUNC2(&rf->rf4, RF4_TXPOWER_A, info->default_power2);
	} else {
		FUNC2(&rf->rf3, RF3_TXPOWER_G, info->default_power1);
		FUNC2(&rf->rf4, RF4_TXPOWER_G, info->default_power2);
	}

	FUNC2(&rf->rf4, RF4_HT40, FUNC0(conf));

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, rf->rf2);
	FUNC1(rt2x00dev, 3, rf->rf3 & ~0x00000004);
	FUNC1(rt2x00dev, 4, rf->rf4);

	FUNC3(200);

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, rf->rf2);
	FUNC1(rt2x00dev, 3, rf->rf3 | 0x00000004);
	FUNC1(rt2x00dev, 4, rf->rf4);

	FUNC3(200);

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, rf->rf2);
	FUNC1(rt2x00dev, 3, rf->rf3 & ~0x00000004);
	FUNC1(rt2x00dev, 4, rf->rf4);
}