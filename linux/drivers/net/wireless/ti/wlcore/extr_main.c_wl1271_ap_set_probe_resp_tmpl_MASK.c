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
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {int /*<<< orphan*/  flags; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int /*<<< orphan*/  hw; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEMPL_AP_PROBE_RESPONSE ; 
 int /*<<< orphan*/  DEBUG_AP ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WLVIF_FLAG_AP_PROBE_RESP_SET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct wl12xx_vif* FUNC5 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl, u32 rates,
					 struct ieee80211_vif *vif)
{
	struct wl12xx_vif *wlvif = FUNC5(vif);
	struct sk_buff *skb;
	int ret;

	skb = FUNC1(wl->hw, vif);
	if (!skb)
		return -EOPNOTSUPP;

	ret = FUNC3(wl, wlvif->role_id,
				      CMD_TEMPL_AP_PROBE_RESPONSE,
				      skb->data,
				      skb->len, 0,
				      rates);
	FUNC0(skb);

	if (ret < 0)
		goto out;

	FUNC4(DEBUG_AP, "probe response updated");
	FUNC2(WLVIF_FLAG_AP_PROBE_RESP_SET, &wlvif->flags);

out:
	return ret;
}