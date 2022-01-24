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
typedef  void* u8 ;
typedef  int u16 ;
struct mt76x2_tx_power_info {int target_power; TYPE_1__* chain; } ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_channel {int hw_value; } ;
typedef  enum mt76x2_cal_channel_group { ____Placeholder_mt76x2_cal_channel_group } mt76x2_cal_channel_group ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {int /*<<< orphan*/  delta; void* target_power; void* tssi_offset; void* tssi_slope; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_EE_RF_2G_RX_HIGH_GAIN ; 
 int MT_TX_POWER_GROUP_SIZE_5G ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int,void**,int) ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct mt76x02_dev *dev,
			 struct mt76x2_tx_power_info *t,
			 struct ieee80211_channel *chan,
			 int chain, int offset)
{
	int channel = chan->hw_value;
	enum mt76x2_cal_channel_group group;
	int delta_idx;
	u16 val;
	u8 data[5];

	group = FUNC3(channel);
	offset += group * MT_TX_POWER_GROUP_SIZE_5G;

	if (channel >= 192)
		delta_idx = 4;
	else if (channel >= 184)
		delta_idx = 3;
	else if (channel < 44)
		delta_idx = 3;
	else if (channel < 52)
		delta_idx = 4;
	else if (channel < 58)
		delta_idx = 3;
	else if (channel < 98)
		delta_idx = 4;
	else if (channel < 106)
		delta_idx = 3;
	else if (channel < 116)
		delta_idx = 4;
	else if (channel < 130)
		delta_idx = 3;
	else if (channel < 149)
		delta_idx = 4;
	else if (channel < 157)
		delta_idx = 3;
	else
		delta_idx = 4;

	FUNC0(dev, offset, data, sizeof(data));

	t->chain[chain].tssi_slope = data[0];
	t->chain[chain].tssi_offset = data[1];
	t->chain[chain].target_power = data[2];
	t->chain[chain].delta =
		FUNC2(data[delta_idx], 7);

	val = FUNC1(dev, MT_EE_RF_2G_RX_HIGH_GAIN);
	t->target_power = val & 0xff;
}