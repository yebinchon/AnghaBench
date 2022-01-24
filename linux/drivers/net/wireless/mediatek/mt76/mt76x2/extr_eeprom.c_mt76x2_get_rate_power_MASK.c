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
typedef  int u16 ;
struct mt76x02_dev {int dummy; } ;
struct mt76_rate_power {void** vht; void** stbc; void** ht; void** ofdm; void** cck; } ;
struct ieee80211_channel {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_EE_TX_POWER_CCK ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_HT_MCS0 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_HT_MCS12 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_HT_MCS4 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_HT_MCS8 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_OFDM_2G_24M ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_OFDM_2G_6M ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_OFDM_5G_24M ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_OFDM_5G_6M ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_VHT_MCS0 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_VHT_MCS4 ; 
 int /*<<< orphan*/  MT_EE_TX_POWER_VHT_MCS8 ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_rate_power*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 

void FUNC4(struct mt76x02_dev *dev, struct mt76_rate_power *t,
			   struct ieee80211_channel *chan)
{
	bool is_5ghz;
	u16 val;

	is_5ghz = chan->band == NL80211_BAND_5GHZ;

	FUNC1(t, 0, sizeof(*t));

	val = FUNC2(dev, MT_EE_TX_POWER_CCK);
	t->cck[0] = t->cck[1] = FUNC3(val);
	t->cck[2] = t->cck[3] = FUNC3(val >> 8);

	if (is_5ghz)
		val = FUNC2(dev, MT_EE_TX_POWER_OFDM_5G_6M);
	else
		val = FUNC2(dev, MT_EE_TX_POWER_OFDM_2G_6M);
	t->ofdm[0] = t->ofdm[1] = FUNC3(val);
	t->ofdm[2] = t->ofdm[3] = FUNC3(val >> 8);

	if (is_5ghz)
		val = FUNC2(dev, MT_EE_TX_POWER_OFDM_5G_24M);
	else
		val = FUNC2(dev, MT_EE_TX_POWER_OFDM_2G_24M);
	t->ofdm[4] = t->ofdm[5] = FUNC3(val);
	t->ofdm[6] = t->ofdm[7] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_HT_MCS0);
	t->ht[0] = t->ht[1] = FUNC3(val);
	t->ht[2] = t->ht[3] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_HT_MCS4);
	t->ht[4] = t->ht[5] = FUNC3(val);
	t->ht[6] = t->ht[7] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_HT_MCS8);
	t->ht[8] = t->ht[9] = FUNC3(val);
	t->ht[10] = t->ht[11] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_HT_MCS12);
	t->ht[12] = t->ht[13] = FUNC3(val);
	t->ht[14] = t->ht[15] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_VHT_MCS0);
	t->vht[0] = t->vht[1] = FUNC3(val);
	t->vht[2] = t->vht[3] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_VHT_MCS4);
	t->vht[4] = t->vht[5] = FUNC3(val);
	t->vht[6] = t->vht[7] = FUNC3(val >> 8);

	val = FUNC2(dev, MT_EE_TX_POWER_VHT_MCS8);
	if (!is_5ghz)
		val >>= 8;
	t->vht[8] = t->vht[9] = FUNC3(val >> 8);

	FUNC0(t->stbc, t->ht, sizeof(t->stbc[0]) * 8);
	t->stbc[8] = t->vht[8];
	t->stbc[9] = t->vht[9];
}