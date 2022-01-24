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
struct TYPE_2__ {int /*<<< orphan*/  hlid; } ;
struct wl12xx_vif {int default_key; scalar_t__ encryption_type; TYPE_1__ sta; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EAGAIN ; 
 scalar_t__ KEY_WEP ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (struct wl1271*,int,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC9 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif,
					  int key_idx)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC9(vif);
	int ret;

	FUNC7(DEBUG_MAC80211, "mac80211 set default key idx %d",
		     key_idx);

	/* we don't handle unsetting of default key */
	if (key_idx == -1)
		return;

	FUNC0(&wl->mutex);

	if (FUNC6(wl->state != WLCORE_STATE_ON)) {
		ret = -EAGAIN;
		goto out_unlock;
	}

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out_unlock;
	}

	wlvif->default_key = key_idx;

	/* the default WEP key needs to be configured at least once */
	if (wlvif->encryption_type == KEY_WEP) {
		ret = FUNC8(wl,
				key_idx,
				wlvif->sta.hlid);
		if (ret < 0)
			goto out_sleep;
	}

out_sleep:
	FUNC3(wl->dev);
	FUNC4(wl->dev);

out_unlock:
	FUNC1(&wl->mutex);
}