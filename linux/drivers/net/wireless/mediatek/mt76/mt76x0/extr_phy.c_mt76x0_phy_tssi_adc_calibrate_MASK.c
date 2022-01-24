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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CORE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct mt76x02_dev *dev, s16 *ltssi,
			      u8 *info)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	u32 val;

	val = (chan->band == NL80211_BAND_5GHZ) ? 0x80055 : 0x80050;
	FUNC5(dev, FUNC1(CORE, 34), val);

	if (!FUNC3(dev, FUNC1(CORE, 34), FUNC0(4), 0, 200)) {
		FUNC2(dev, FUNC1(CORE, 34), FUNC0(4));
		return -ETIMEDOUT;
	}

	*ltssi = FUNC4(dev, FUNC1(CORE, 35)) & 0xff;
	if (chan->band == NL80211_BAND_5GHZ)
		*ltssi += 128;

	/* set packet info#1 mode */
	FUNC5(dev, FUNC1(CORE, 34), 0x80041);
	info[0] = FUNC4(dev, FUNC1(CORE, 35)) & 0xff;

	/* set packet info#2 mode */
	FUNC5(dev, FUNC1(CORE, 34), 0x80042);
	info[1] = FUNC4(dev, FUNC1(CORE, 35)) & 0xff;

	/* set packet info#3 mode */
	FUNC5(dev, FUNC1(CORE, 34), 0x80043);
	info[2] = FUNC4(dev, FUNC1(CORE, 35)) & 0xff;

	return 0;
}