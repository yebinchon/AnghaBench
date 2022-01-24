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
typedef  scalar_t__ u8 ;
struct rtl_phy {scalar_t__ num_total_rfpath; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ RF90_PATH_A ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,scalar_t__,scalar_t__) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

void FUNC2(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u8 path = 0;

	for (path = RF90_PATH_A; path < rtlphy->num_total_rfpath; ++path)
		FUNC0(hw, channel, path);
}