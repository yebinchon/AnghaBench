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
struct rtl_usb_priv {int dummy; } ;
struct rtl_ep_map {int dummy; } ;
struct rtl_usb {int out_ep_nums; struct rtl_ep_map ep_map; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct rtl_ep_map*) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC4 (struct rtl_usb_priv*) ; 
 struct rtl_usb_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,struct rtl_ep_map*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int,struct rtl_ep_map*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw)
{
	int err = 0;
	bool ischipn, bwificfg = false;
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	struct rtl_usb_priv *usb_priv = FUNC5(hw);
	struct rtl_usb *rtlusb = FUNC4(usb_priv);
	struct rtl_ep_map *ep_map = &(rtlusb->ep_map);

	ischipn = FUNC0(rtlhal->version);
	switch (rtlusb->out_ep_nums) {
	case 2:
		FUNC7(hw, ischipn, bwificfg, ep_map);
		break;
	case 3:
		/* Test chip doesn't support three out EPs. */
		if (!ischipn) {
			err  =  -EINVAL;
			goto err_out;
		}
		FUNC6(hw, ischipn, ep_map);
		break;
	case 1:
		FUNC1(hw, ep_map);
		break;
	default:
		err  =  -EINVAL;
		break;
	}
err_out:
	return err;

}