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
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EINVAL ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 struct ieee80211_hw* FUNC7 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct wl1271*) ; 

__attribute__((used)) static int
FUNC10(struct wiphy *wiphy,
				    struct wireless_dev *wdev,
				    const void *data, int data_len)
{
	struct ieee80211_hw *hw = FUNC7(wiphy);
	struct wl1271 *wl = hw->priv;
	int ret;

	FUNC8(DEBUG_CMD, "testmode cmd smart config stop");

	FUNC0(&wl->mutex);

	if (FUNC6(wl->state != WLCORE_STATE_ON)) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out;
	}

	ret = FUNC9(wl);

	FUNC3(wl->dev);
	FUNC4(wl->dev);
out:
	FUNC1(&wl->mutex);

	return ret;
}