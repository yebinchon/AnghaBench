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
struct rtl_phy {scalar_t__ apk_done; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw, s8 delta)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));

	if (rtlphy->apk_done)
		return;
	if (FUNC0(rtlhal->version))
		FUNC1(hw, delta, true);
	else
		FUNC1(hw, delta, false);
}