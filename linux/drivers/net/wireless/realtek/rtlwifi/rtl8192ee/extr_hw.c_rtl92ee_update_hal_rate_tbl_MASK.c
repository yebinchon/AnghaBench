#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

void FUNC2(struct ieee80211_hw *hw,
				 struct ieee80211_sta *sta, u8 rssi_level,
				 bool update_bw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	if (rtlpriv->dm.useramask)
		FUNC0(hw, sta, rssi_level, update_bw);
}