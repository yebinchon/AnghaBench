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
typedef  int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  HW_VAR_H2C_FW_MEDIASTATUSRPT ; 
 int MAC_ID_STATIC_FOR_BROADCAST_MULTICAST ; 
 int MAC_ID_STATIC_FOR_BT_CLIENT_END ; 
 int RT_MEDIA_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8	media_rpt[4] = {RT_MEDIA_CONNECT, 1,
		MAC_ID_STATIC_FOR_BROADCAST_MULTICAST,
		MAC_ID_STATIC_FOR_BT_CLIENT_END};

	rtlpriv->cfg->ops->set_hw_reg(hw,
		HW_VAR_H2C_FW_MEDIASTATUSRPT, media_rpt);

	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
		 "Initialize MacId media status: from %d to %d\n",
		 MAC_ID_STATIC_FOR_BROADCAST_MULTICAST,
		 MAC_ID_STATIC_FOR_BT_CLIENT_END);
}