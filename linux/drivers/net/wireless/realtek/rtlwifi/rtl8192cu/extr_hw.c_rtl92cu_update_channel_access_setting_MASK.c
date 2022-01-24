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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_mac {int /*<<< orphan*/  ht_enable; int /*<<< orphan*/  slot_time; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_SIFS ; 
 int /*<<< orphan*/  HW_VAR_SLOT_TIME ; 
 struct rtl_mac* FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_mac *mac = FUNC0(FUNC1(hw));
	u16 sifs_timer;

	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SLOT_TIME,
				      &mac->slot_time);
	if (!mac->ht_enable)
		sifs_timer = 0x0a0a;
	else
		sifs_timer = 0x0e0e;
	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SIFS, (u8 *)&sifs_timer);
}