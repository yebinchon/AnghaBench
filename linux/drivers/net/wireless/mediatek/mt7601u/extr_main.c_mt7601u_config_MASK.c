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
typedef  int u32 ;
struct mt7601u_dev {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, u32 changed)
{
	struct mt7601u_dev *dev = hw->priv;
	int ret = 0;

	FUNC3(&dev->mutex);

	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		FUNC0(hw);
		ret = FUNC2(dev, &hw->conf.chandef);
		FUNC1(hw);
	}

	FUNC4(&dev->mutex);

	return ret;
}