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
typedef  scalar_t__ u8 ;
struct wl1251 {int monitor_present; scalar_t__ default_key; int /*<<< orphan*/  joined; int /*<<< orphan*/ * vif; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct TYPE_3__ {scalar_t__ hw_key_idx; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1251*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct wl1251*,scalar_t__) ; 
 int FUNC4 (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int FUNC5 (struct wl1251*) ; 
 int FUNC6 (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1251*) ; 

__attribute__((used)) static int FUNC8(struct wl1251 *wl, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info;
	int ret = 0;
	u8 idx;

	info = FUNC0(skb);

	if (info->control.hw_key) {
		if (FUNC2(wl->monitor_present))
			return -EINVAL;

		idx = info->control.hw_key->hw_key_idx;
		if (FUNC2(wl->default_key != idx)) {
			ret = FUNC3(wl, idx);
			if (ret < 0)
				return ret;
		}
	}

	/* Enable tx path in monitor mode for packet injection */
	if ((wl->vif == NULL) && !wl->joined)
		FUNC1(wl);

	ret = FUNC5(wl);
	if (ret < 0)
		return ret;

	ret = FUNC4(wl, skb, info);
	if (ret < 0)
		return ret;

	ret = FUNC6(wl, skb, info);
	if (ret < 0)
		return ret;

	FUNC7(wl);

	return ret;
}