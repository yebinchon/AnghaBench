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
struct nlattr {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX_WLCORE_VENDOR_ATTR ; 
 int NUM_WLCORE_VENDOR_ATTR ; 
 scalar_t__ WLCORE_STATE_ON ; 
 size_t WLCORE_VENDOR_ATTR_GROUP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 struct ieee80211_hw* FUNC9 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wlcore_vendor_attr_policy ; 

__attribute__((used)) static int
FUNC12(struct wiphy *wiphy,
				     struct wireless_dev *wdev,
				     const void *data, int data_len)
{
	struct ieee80211_hw *hw = FUNC9(wiphy);
	struct wl1271 *wl = hw->priv;
	struct nlattr *tb[NUM_WLCORE_VENDOR_ATTR];
	int ret;

	FUNC10(DEBUG_CMD, "vendor cmd smart config start");

	if (!data)
		return -EINVAL;

	ret = FUNC3(tb, MAX_WLCORE_VENDOR_ATTR, data, data_len,
				   wlcore_vendor_attr_policy, NULL);
	if (ret)
		return ret;

	if (!tb[WLCORE_VENDOR_ATTR_GROUP_ID])
		return -EINVAL;

	FUNC0(&wl->mutex);

	if (FUNC8(wl->state != WLCORE_STATE_ON)) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC4(wl->dev);
	if (ret < 0) {
		FUNC7(wl->dev);
		goto out;
	}

	ret = FUNC11(wl,
			FUNC2(tb[WLCORE_VENDOR_ATTR_GROUP_ID]));

	FUNC5(wl->dev);
	FUNC6(wl->dev);
out:
	FUNC1(&wl->mutex);

	return ret;
}