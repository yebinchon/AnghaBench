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
typedef  int u32 ;
struct wl1271 {scalar_t__ plt_mode; } ;
struct nlattr {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ PLT_CHIP_AWAKE ; 
 size_t WL1271_TM_ATTR_CMD_ID ; 
 int /*<<< orphan*/  WL1271_TM_ATTR_MAX ; 
#define  WL1271_TM_CMD_CONFIGURE 132 
#define  WL1271_TM_CMD_GET_MAC 131 
#define  WL1271_TM_CMD_INTERROGATE 130 
#define  WL1271_TM_CMD_SET_PLT_MODE 129 
#define  WL1271_TM_CMD_TEST 128 
 int FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1271*,struct nlattr**) ; 
 int FUNC3 (struct wl1271*,struct nlattr**) ; 
 int FUNC4 (struct wl1271*,struct nlattr**) ; 
 int FUNC5 (struct wl1271*,struct nlattr**) ; 
 int /*<<< orphan*/  wl1271_tm_policy ; 
 int FUNC6 (struct wl1271*,struct nlattr**) ; 

int FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		  void *data, int len)
{
	struct wl1271 *wl = hw->priv;
	struct nlattr *tb[WL1271_TM_ATTR_MAX + 1];
	u32 nla_cmd;
	int err;

	err = FUNC1(tb, WL1271_TM_ATTR_MAX, data, len,
				   wl1271_tm_policy, NULL);
	if (err)
		return err;

	if (!tb[WL1271_TM_ATTR_CMD_ID])
		return -EINVAL;

	nla_cmd = FUNC0(tb[WL1271_TM_ATTR_CMD_ID]);

	/* Only SET_PLT_MODE is allowed in case of mode PLT_CHIP_AWAKE */
	if (wl->plt_mode == PLT_CHIP_AWAKE &&
	    nla_cmd != WL1271_TM_CMD_SET_PLT_MODE)
		return -EOPNOTSUPP;

	switch (nla_cmd) {
	case WL1271_TM_CMD_TEST:
		return FUNC5(wl, tb);
	case WL1271_TM_CMD_INTERROGATE:
		return FUNC3(wl, tb);
	case WL1271_TM_CMD_CONFIGURE:
		return FUNC2(wl, tb);
	case WL1271_TM_CMD_SET_PLT_MODE:
		return FUNC4(wl, tb);
	case WL1271_TM_CMD_GET_MAC:
		return FUNC6(wl, tb);
	default:
		return -EOPNOTSUPP;
	}
}