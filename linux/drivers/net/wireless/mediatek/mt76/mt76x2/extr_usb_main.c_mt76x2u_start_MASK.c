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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_RUNNING ; 
 int /*<<< orphan*/  MT_MAC_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int FUNC2 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct mt76x02_dev *dev = hw->priv;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	FUNC0(FUNC1(dev), &dev->mt76.mac_work,
				     MT_MAC_WORK_INTERVAL);
	FUNC3(MT76_STATE_RUNNING, &dev->mt76.state);

	return 0;
}