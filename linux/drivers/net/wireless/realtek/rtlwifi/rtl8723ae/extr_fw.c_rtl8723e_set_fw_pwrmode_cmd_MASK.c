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
struct rtl_ps_ctl {int smart_ps; int /*<<< orphan*/  reg_max_lps_awakeintvl; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  H2C_SETPWRMODE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 

void FUNC8(struct ieee80211_hw *hw, u8 mode)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	u8 u1_h2c_set_pwrmode[3] = { 0 };
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC6(hw));

	FUNC1(rtlpriv, COMP_POWER, DBG_LOUD, "FW LPS mode = %d\n", mode);

	FUNC3(u1_h2c_set_pwrmode, mode);
	FUNC4(u1_h2c_set_pwrmode,
		(rtlpriv->mac80211.p2p) ? ppsc->smart_ps : 1);
	FUNC2(u1_h2c_set_pwrmode,
					      ppsc->reg_max_lps_awakeintvl);

	FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
		      "rtl8723e_set_fw_rsvdpagepkt(): u1_h2c_set_pwrmode\n",
		      u1_h2c_set_pwrmode, 3);
	FUNC5(hw, H2C_SETPWRMODE, 3, u1_h2c_set_pwrmode);
}