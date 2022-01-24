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
struct TYPE_2__ {int /*<<< orphan*/  work; scalar_t__ enabled; } ;
struct mt7601u_dev {TYPE_1__ freq_cal; int /*<<< orphan*/  hw; int /*<<< orphan*/  cal_work; int /*<<< orphan*/  state; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_SCANNING ; 
 int /*<<< orphan*/  MT_CALIBRATE_INTERVAL ; 
 int /*<<< orphan*/  MT_FREQ_CAL_INIT_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_hw *hw,
			 struct ieee80211_vif *vif)
{
	struct mt7601u_dev *dev = hw->priv;

	FUNC2(dev);
	FUNC0(MT7601U_STATE_SCANNING, &dev->state);

	FUNC1(dev->hw, &dev->cal_work,
				     MT_CALIBRATE_INTERVAL);
	if (dev->freq_cal.enabled)
		FUNC1(dev->hw, &dev->freq_cal.work,
					     MT_FREQ_CAL_INIT_DELAY);
}