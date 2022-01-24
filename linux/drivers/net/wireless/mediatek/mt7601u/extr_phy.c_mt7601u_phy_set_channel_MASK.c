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
struct mt7601u_dev {TYPE_1__ freq_cal; int /*<<< orphan*/  hw; int /*<<< orphan*/  cal_work; int /*<<< orphan*/  state; int /*<<< orphan*/  hw_atomic_mutex; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_SCANNING ; 
 int /*<<< orphan*/  MT_CALIBRATE_INTERVAL ; 
 int /*<<< orphan*/  MT_FREQ_CAL_INIT_DELAY ; 
 int FUNC0 (struct mt7601u_dev*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct mt7601u_dev *dev,
			    struct cfg80211_chan_def *chandef)
{
	int ret;

	FUNC1(&dev->cal_work);
	FUNC1(&dev->freq_cal.work);

	FUNC3(&dev->hw_atomic_mutex);
	ret = FUNC0(dev, chandef);
	FUNC4(&dev->hw_atomic_mutex);
	if (ret)
		return ret;

	if (FUNC5(MT7601U_STATE_SCANNING, &dev->state))
		return 0;

	FUNC2(dev->hw, &dev->cal_work,
				     MT_CALIBRATE_INTERVAL);
	if (dev->freq_cal.enabled)
		FUNC2(dev->hw, &dev->freq_cal.work,
					     MT_FREQ_CAL_INIT_DELAY);
	return 0;
}