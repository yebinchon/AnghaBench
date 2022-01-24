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
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int MT_EE_TX_POWER_BYRATE_BASE ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_rate_power*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_rate_power*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC4 (struct mt76x02_dev*) ; 
 void* FUNC5 (int) ; 

void FUNC6(struct mt76x02_dev *dev,
				  struct ieee80211_channel *chan,
				  struct mt76_rate_power *t)
{
	bool is_2ghz = chan->band == NL80211_BAND_2GHZ;
	u16 val, addr;
	s8 delta;

	FUNC0(t, 0, sizeof(*t));

	/* cck 1M, 2M, 5.5M, 11M */
	val = FUNC2(dev, MT_EE_TX_POWER_BYRATE_BASE);
	t->cck[0] = t->cck[1] = FUNC5(val);
	t->cck[2] = t->cck[3] = FUNC5(val >> 8);

	/* ofdm 6M, 9M, 12M, 18M */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 2 : 0x120;
	val = FUNC2(dev, addr);
	t->ofdm[0] = t->ofdm[1] = FUNC5(val);
	t->ofdm[2] = t->ofdm[3] = FUNC5(val >> 8);

	/* ofdm 24M, 36M, 48M, 54M */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 4 : 0x122;
	val = FUNC2(dev, addr);
	t->ofdm[4] = t->ofdm[5] = FUNC5(val);
	t->ofdm[6] = t->ofdm[7] = FUNC5(val >> 8);

	/* ht-vht mcs 1ss 0, 1, 2, 3 */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 6 : 0x124;
	val = FUNC2(dev, addr);
	t->ht[0] = t->ht[1] = t->vht[0] = t->vht[1] = FUNC5(val);
	t->ht[2] = t->ht[3] = t->vht[2] = t->vht[3] = FUNC5(val >> 8);

	/* ht-vht mcs 1ss 4, 5, 6 */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 8 : 0x126;
	val = FUNC2(dev, addr);
	t->ht[4] = t->ht[5] = t->vht[4] = t->vht[5] = FUNC5(val);
	t->ht[6] = t->ht[7] = t->vht[6] = t->vht[7] = FUNC5(val >> 8);

	/* ht-vht mcs 1ss 0, 1, 2, 3 stbc */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 14 : 0xec;
	val = FUNC2(dev, addr);
	t->stbc[0] = t->stbc[1] = FUNC5(val);
	t->stbc[2] = t->stbc[3] = FUNC5(val >> 8);

	/* ht-vht mcs 1ss 4, 5, 6 stbc */
	addr = is_2ghz ? MT_EE_TX_POWER_BYRATE_BASE + 16 : 0xee;
	val = FUNC2(dev, addr);
	t->stbc[4] = t->stbc[5] = FUNC5(val);
	t->stbc[6] = t->stbc[7] = FUNC5(val >> 8);

	/* vht mcs 8, 9 5GHz */
	val = FUNC2(dev, 0x132);
	t->vht[8] = FUNC5(val);
	t->vht[9] = FUNC5(val >> 8);

	delta = FUNC4(dev) ? 0 : FUNC3(dev);
	FUNC1(t, delta);
}