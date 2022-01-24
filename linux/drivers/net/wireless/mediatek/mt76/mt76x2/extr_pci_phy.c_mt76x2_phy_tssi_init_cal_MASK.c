#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int tssi_cal_done; } ;
struct TYPE_5__ {struct ieee80211_channel* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct mt76x02_dev {TYPE_1__ cal; TYPE_3__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MCU_CAL_TSSI ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 

__attribute__((used)) static bool
FUNC5(struct mt76x02_dev *dev)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	u32 flag = 0;

	if (!FUNC4(dev))
		return false;

	if (FUNC3(dev))
		return false;

	if (chan->band == NL80211_BAND_5GHZ)
		flag |= FUNC0(0);

	if (FUNC1(dev, chan->band))
		flag |= FUNC0(8);

	FUNC2(dev, MCU_CAL_TSSI, flag);
	dev->cal.tssi_cal_done = true;
	return true;
}