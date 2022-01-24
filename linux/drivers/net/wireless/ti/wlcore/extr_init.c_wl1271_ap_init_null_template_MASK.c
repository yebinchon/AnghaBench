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
struct wl12xx_vif {int /*<<< orphan*/  role_id; int /*<<< orphan*/  basic_rate_set; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEMPL_NULL_DATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_STYPE_NULLFUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hdr_3addr*) ; 
 struct ieee80211_hdr_3addr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hdr_3addr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC6 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC7(struct wl1271 *wl,
					struct ieee80211_vif *vif)
{
	struct wl12xx_vif *wlvif = FUNC6(vif);
	struct ieee80211_hdr_3addr *nullfunc;
	int ret;
	u32 rate;

	nullfunc = FUNC2(sizeof(*nullfunc), GFP_KERNEL);
	if (!nullfunc) {
		ret = -ENOMEM;
		goto out;
	}

	nullfunc->frame_control = FUNC0(IEEE80211_FTYPE_DATA |
					      IEEE80211_STYPE_NULLFUNC |
					      IEEE80211_FCTL_FROMDS);

	/* nullfunc->addr1 is filled by FW */

	FUNC3(nullfunc->addr2, vif->addr, ETH_ALEN);
	FUNC3(nullfunc->addr3, vif->addr, ETH_ALEN);

	rate = FUNC5(wl, wlvif->basic_rate_set);
	ret = FUNC4(wl, wlvif->role_id,
				      CMD_TEMPL_NULL_DATA, nullfunc,
				      sizeof(*nullfunc), 0, rate);

out:
	FUNC1(nullfunc);
	return ret;
}