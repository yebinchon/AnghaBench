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
typedef  int u32 ;
struct TYPE_6__ {int tssi_dc; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_3__ cal; TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_RF_BYPASS_0 ; 
 int /*<<< orphan*/  MT_RF_SETTING_0 ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  TXBE ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct mt76x02_dev *dev)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	u32 val;

	if (chan->band == NL80211_BAND_5GHZ)
		FUNC8(dev, FUNC2(0, 67), 0xf);

	/* bypass ADDA control */
	FUNC7(dev, MT_RF_SETTING_0, 0x60002237);
	FUNC7(dev, MT_RF_BYPASS_0, 0xffffffff);

	/* bbp sw reset */
	FUNC6(dev, FUNC1(CORE, 4), FUNC0(0));
	FUNC10(500, 1000);
	FUNC3(dev, FUNC1(CORE, 4), FUNC0(0));

	val = (chan->band == NL80211_BAND_5GHZ) ? 0x80055 : 0x80050;
	FUNC7(dev, FUNC1(CORE, 34), val);

	/* enable TX with DAC0 input */
	FUNC7(dev, FUNC1(TXBE, 6), FUNC0(31));

	FUNC4(dev, FUNC1(CORE, 34), FUNC0(4), 0, 200);
	dev->cal.tssi_dc = FUNC5(dev, FUNC1(CORE, 35)) & 0xff;

	/* stop bypass ADDA */
	FUNC7(dev, MT_RF_BYPASS_0, 0);
	/* stop TX */
	FUNC7(dev, FUNC1(TXBE, 6), 0);
	/* bbp sw reset */
	FUNC6(dev, FUNC1(CORE, 4), FUNC0(0));
	FUNC10(500, 1000);
	FUNC3(dev, FUNC1(CORE, 4), FUNC0(0));

	if (chan->band == NL80211_BAND_5GHZ)
		FUNC9(dev, FUNC2(0, 67), 0xf, 0x4);
}