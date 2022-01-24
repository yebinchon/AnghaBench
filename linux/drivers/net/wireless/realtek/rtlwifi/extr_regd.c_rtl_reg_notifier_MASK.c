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
struct wiphy {int dummy; } ;
struct rtl_priv {int /*<<< orphan*/  regd; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_REGD ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct regulatory_request*,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC3 (struct wiphy*) ; 

void FUNC4(struct wiphy *wiphy, struct regulatory_request *request)
{
	struct ieee80211_hw *hw = FUNC3(wiphy);
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC0(rtlpriv, COMP_REGD, DBG_LOUD, "\n");

	FUNC1(wiphy, request, &rtlpriv->regd);
}