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
struct mt7601u_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cal_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  mac_work; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_CALIBRATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct mt7601u_dev *dev = hw->priv;
	int ret;

	FUNC2(&dev->mutex);

	ret = FUNC1(dev);
	if (ret)
		goto out;

	FUNC0(dev->hw, &dev->mac_work,
				     MT_CALIBRATE_INTERVAL);
	FUNC0(dev->hw, &dev->cal_work,
				     MT_CALIBRATE_INTERVAL);
out:
	FUNC3(&dev->mutex);
	return ret;
}