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
struct TYPE_2__ {int /*<<< orphan*/  macphyctl_reg; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MAC_PHY_CTRL_NORMAL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	rtlpriv->rtlhal.macphyctl_reg = FUNC1(rtlpriv,
		REG_MAC_PHY_CTRL_NORMAL);
}