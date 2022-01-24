#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ rfpwr_state; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_pci {int receive_config; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  HW_VAR_RCR ; 
 int RCR_CBSSID_BCN ; 
 int RCR_CBSSID_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct ieee80211_hw *hw, bool check_bssid)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_pci *rtlpci = FUNC2(FUNC3(hw));
	u32 reg_rcr = rtlpci->receive_config;

	if (rtlpriv->psc.rfpwr_state != ERFON)
		return;

	if (check_bssid) {
		reg_rcr |= (RCR_CBSSID_DATA | RCR_CBSSID_BCN);
		rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RCR,
					      (u8 *)(&reg_rcr));
		FUNC1(hw, 0, FUNC0(4));
	} else {
		reg_rcr &= (~(RCR_CBSSID_DATA | RCR_CBSSID_BCN));
		FUNC1(hw, FUNC0(4), 0);
		rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RCR,
					      (u8 *)(&reg_rcr));
	}
}