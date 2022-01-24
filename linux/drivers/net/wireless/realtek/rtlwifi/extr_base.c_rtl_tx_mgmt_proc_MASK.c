#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int need_iqk; } ;
struct TYPE_5__ {scalar_t__ supp_phymode_switch; } ;
struct rtl_priv {TYPE_4__ phy; TYPE_3__* cfg; TYPE_1__ dm; } ;
struct rtl_mac {scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* chk_switch_dmdp ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ MAC80211_LINKING ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 

bool FUNC7(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct rtl_mac *mac = FUNC4(FUNC5(hw));
	struct rtl_priv *rtlpriv = FUNC5(hw);
	__le16 fc = FUNC3(skb);

	if (rtlpriv->dm.supp_phymode_switch &&
	    mac->link_state < MAC80211_LINKED &&
	    (FUNC1(fc) || FUNC2(fc))) {
		if (rtlpriv->cfg->ops->chk_switch_dmdp)
			rtlpriv->cfg->ops->chk_switch_dmdp(hw);
	}
	if (FUNC1(fc)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_DMESG, "MAC80211_LINKING\n");

		mac->link_state = MAC80211_LINKING;
		/* Dul mac */
		rtlpriv->phy.need_iqk = true;

	}

	return true;
}