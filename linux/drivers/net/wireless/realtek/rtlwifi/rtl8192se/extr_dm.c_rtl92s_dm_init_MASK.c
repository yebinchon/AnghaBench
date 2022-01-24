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
struct TYPE_2__ {int undec_sm_pwdb; int /*<<< orphan*/  dm_type; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_TYPE_BYDRIVER ; 
 int /*<<< orphan*/  FW_CCA_CHK_ENABLE ; 
 int /*<<< orphan*/  WFM5 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);

	rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;
	rtlpriv->dm.undec_sm_pwdb = -1;

	FUNC1(hw);
	FUNC4(hw);
	FUNC2(hw);
	FUNC3(hw);
	FUNC0(hw);

	FUNC6(rtlpriv, WFM5, FW_CCA_CHK_ENABLE);
}