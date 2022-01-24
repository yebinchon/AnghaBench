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
 size_t WLCORE_VENDOR_ATTR_GROUP_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 struct ieee80211_hw* FUNC11 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wlcore_vendor_attr_policy ; 

__attribute__((used)) static int
FUNC14(struct wiphy *wiphy,
					     struct wireless_dev *wdev,
					     const void *data, int data_len)
{
	struct ieee80211_hw *hw = FUNC11(wiphy);
	struct wl1271 *wl = hw->priv;
	struct nlattr *tb[NUM_WLCORE_VENDOR_ATTR];
	int ret;

	FUNC12(DEBUG_CMD, "testmode cmd smart config set group key");

	if (!data)
		return -EINVAL;

	ret = FUNC5(tb, MAX_WLCORE_VENDOR_ATTR, data, data_len,
				   wlcore_vendor_attr_policy, NULL);
	if (ret)
		return ret;

	if (!tb[WLCORE_VENDOR_ATTR_GROUP_ID] ||
	    !tb[WLCORE_VENDOR_ATTR_GROUP_KEY])
		return -EINVAL;

	FUNC0(&wl->mutex);

	if (FUNC10(wl->state != WLCORE_STATE_ON)) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC6(wl->dev);
	if (ret < 0) {
		FUNC9(wl->dev);
		goto out;
	}

	ret = FUNC13(wl,
			FUNC3(tb[WLCORE_VENDOR_ATTR_GROUP_ID]),
			FUNC4(tb[WLCORE_VENDOR_ATTR_GROUP_KEY]),
			FUNC2(tb[WLCORE_VENDOR_ATTR_GROUP_KEY]));

	FUNC7(wl->dev);
	FUNC8(wl->dev);
out:
	FUNC1(&wl->mutex);

	return ret;
}