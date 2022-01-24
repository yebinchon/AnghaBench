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
typedef  int u32 ;
struct TYPE_3__ {int txpower_conf; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct TYPE_4__ {int flags; int power_level; int /*<<< orphan*/  chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; struct mt76x02_dev* priv; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_MONITOR ; 
 int /*<<< orphan*/  MT76_STATE_RUNNING ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct ieee80211_hw *hw, u32 changed)
{
	struct mt76x02_dev *dev = hw->priv;
	int err = 0;

	FUNC5(&dev->mt76.mutex);

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		if (!(hw->conf.flags & IEEE80211_CONF_MONITOR))
			dev->mt76.rxfilter |= MT_RX_FILTR_CFG_PROMISC;
		else
			dev->mt76.rxfilter &= ~MT_RX_FILTR_CFG_PROMISC;
		FUNC2(dev, MT_RX_FILTR_CFG, dev->mt76.rxfilter);
	}

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		dev->mt76.txpower_conf = hw->conf.power_level * 2;

		/* convert to per-chain power for 2x2 devices */
		dev->mt76.txpower_conf -= 6;

		if (FUNC7(MT76_STATE_RUNNING, &dev->mt76.state))
			FUNC3(dev);
	}

	FUNC6(&dev->mt76.mutex);

	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		FUNC0(hw);
		err = FUNC4(dev, &hw->conf.chandef);
		FUNC1(hw);
	}

	return err;
}