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
struct mt76_vif {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int idx; int hw_key_idx; } ;
struct mt76_sta {TYPE_1__ wcid; } ;
struct mt7601u_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * wcid; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		struct ieee80211_sta *sta)
{
	struct mt7601u_dev *dev = hw->priv;
	struct mt76_sta *msta = (struct mt76_sta *) sta->drv_priv;
	struct mt76_vif *mvif = (struct mt76_vif *) vif->drv_priv;
	int ret = 0;
	int idx = 0;

	FUNC6(&dev->mutex);

	idx = FUNC5(dev);
	if (idx < 0) {
		ret = -ENOSPC;
		goto out;
	}

	msta->wcid.idx = idx;
	msta->wcid.hw_key_idx = -1;
	FUNC3(dev, idx, mvif->idx, sta->addr);
	FUNC4(dev, FUNC0(idx), FUNC1(idx));
	FUNC8(dev->wcid[idx], &msta->wcid);
	FUNC2(dev);

out:
	FUNC7(&dev->mutex);

	return ret;
}