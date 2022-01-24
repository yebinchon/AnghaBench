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
struct TYPE_4__ {int channel_cal_done; int /*<<< orphan*/  tssi_cal_done; } ;
struct TYPE_5__ {struct ieee80211_channel* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct mt76x02_dev {TYPE_1__ cal; TYPE_3__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_CAL_LC ; 
 int /*<<< orphan*/  MCU_CAL_RXIQC_FI ; 
 int /*<<< orphan*/  MCU_CAL_TEMP_SENSOR ; 
 int /*<<< orphan*/  MCU_CAL_TXIQ ; 
 int /*<<< orphan*/  MCU_CAL_TX_LOFT ; 
 int /*<<< orphan*/  MCU_CAL_TX_SHAPING ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 

__attribute__((used)) static void
FUNC7(struct mt76x02_dev *dev, bool mac_stopped)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	bool is_5ghz = chan->band == NL80211_BAND_5GHZ;

	if (dev->cal.channel_cal_done)
		return;

	if (FUNC3(dev))
		return;

	if (!dev->cal.tssi_cal_done)
		FUNC6(dev);

	if (!mac_stopped)
		FUNC5(dev, false);

	if (is_5ghz)
		FUNC1(dev, MCU_CAL_LC, 0);

	FUNC1(dev, MCU_CAL_TX_LOFT, is_5ghz);
	FUNC1(dev, MCU_CAL_TXIQ, is_5ghz);
	FUNC1(dev, MCU_CAL_RXIQC_FI, is_5ghz);
	FUNC1(dev, MCU_CAL_TEMP_SENSOR, 0);
	FUNC1(dev, MCU_CAL_TX_SHAPING, 0);

	if (!mac_stopped)
		FUNC4(dev);

	FUNC2(dev);
	FUNC0(dev);

	dev->cal.channel_cal_done = true;
}