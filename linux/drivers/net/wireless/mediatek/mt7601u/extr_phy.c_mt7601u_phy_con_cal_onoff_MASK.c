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
struct TYPE_4__ {int adjusting; int /*<<< orphan*/  work; scalar_t__ enabled; int /*<<< orphan*/  freq; } ;
struct mt7601u_dev {TYPE_2__ freq_cal; int /*<<< orphan*/  hw; TYPE_1__* ee; int /*<<< orphan*/  con_mon_lock; int /*<<< orphan*/  bcn_freq_off; int /*<<< orphan*/  avg_rssi; int /*<<< orphan*/  ap_bssid; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  rf_freq_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_FREQ_CAL_INIT_DELAY ; 
 int /*<<< orphan*/  MT_FREQ_OFFSET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mt7601u_dev *dev,
			       struct ieee80211_bss_conf *info)
{
	if (!info->assoc)
		FUNC0(&dev->freq_cal.work);

	/* Start/stop collecting beacon data */
	FUNC4(&dev->con_mon_lock);
	FUNC1(dev->ap_bssid, info->bssid);
	FUNC2(&dev->avg_rssi);
	dev->bcn_freq_off = MT_FREQ_OFFSET_INVALID;
	FUNC5(&dev->con_mon_lock);

	dev->freq_cal.freq = dev->ee->rf_freq_off;
	dev->freq_cal.enabled = info->assoc;
	dev->freq_cal.adjusting = false;

	if (info->assoc)
		FUNC3(dev->hw, &dev->freq_cal.work,
					     MT_FREQ_CAL_INIT_DELAY);
}