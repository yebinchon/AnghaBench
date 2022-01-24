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
typedef  int u8 ;
struct TYPE_6__ {int pre_edcca_enable; } ;
struct rtl_priv {TYPE_3__ rtlhal; TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_FW_PSMODE_STATUS ; 
 int /*<<< orphan*/  MASKBYTE0 ; 
 scalar_t__ ROFDM0_ECCATHRESHOLD ; 
 int /*<<< orphan*/  ROFDM0_XAAGCCORE1 ; 
 int /*<<< orphan*/  ROFDM0_XBAGCCORE1 ; 
 int FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 reg_c50 , reg_c58;
	bool fw_current_in_ps_mode = false;

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
				      (u8 *)(&fw_current_in_ps_mode));
	if (fw_current_in_ps_mode)
		return;

	reg_c50 = FUNC0(hw, ROFDM0_XAAGCCORE1, MASKBYTE0);
	reg_c58 = FUNC0(hw, ROFDM0_XBAGCCORE1, MASKBYTE0);

	if (reg_c50 > 0x28 && reg_c58 > 0x28) {
		if (!rtlpriv->rtlhal.pre_edcca_enable) {
			FUNC2(rtlpriv, ROFDM0_ECCATHRESHOLD, 0x03);
			FUNC2(rtlpriv, ROFDM0_ECCATHRESHOLD + 2, 0x00);
			rtlpriv->rtlhal.pre_edcca_enable = true;
		}
	} else if (reg_c50 < 0x25 && reg_c58 < 0x25) {
		if (rtlpriv->rtlhal.pre_edcca_enable) {
			FUNC2(rtlpriv, ROFDM0_ECCATHRESHOLD, 0x7f);
			FUNC2(rtlpriv, ROFDM0_ECCATHRESHOLD + 2, 0x7f);
			rtlpriv->rtlhal.pre_edcca_enable = false;
		}
	}
}