#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {scalar_t__ use_defaultkey; scalar_t__ use_sw_sec; int /*<<< orphan*/  group_enc_algorithm; int /*<<< orphan*/  pairwise_enc_algorithm; } ;
struct rtl_priv {TYPE_4__* cfg; TYPE_2__ sec; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ops; TYPE_1__* mod_params; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_5__ {scalar_t__ sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  HW_VAR_WPA_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_CR ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int SCR_RXBCUSEDK ; 
 int SCR_RXDECENABLE ; 
 int SCR_RXUSEDK ; 
 int SCR_TXBCUSEDK ; 
 int SCR_TXENCENABLE ; 
 int SCR_TXUSEDK ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 sec_reg_value = 0x0;
	struct rtl_hal *rtlhal = FUNC2(rtlpriv);

	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
		 "PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\n",
		 rtlpriv->sec.pairwise_enc_algorithm,
		 rtlpriv->sec.group_enc_algorithm);
	if (rtlpriv->cfg->mod_params->sw_crypto || rtlpriv->sec.use_sw_sec) {
		FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
			 "not open sw encryption\n");
		return;
	}
	sec_reg_value = SCR_TXENCENABLE | SCR_RXDECENABLE;
	if (rtlpriv->sec.use_defaultkey) {
		sec_reg_value |= SCR_TXUSEDK;
		sec_reg_value |= SCR_RXUSEDK;
	}
	if (FUNC0(rtlhal->version))
		sec_reg_value |= (SCR_RXBCUSEDK | SCR_TXBCUSEDK);
	FUNC4(rtlpriv, REG_CR + 1, 0x02);
	FUNC1(rtlpriv, COMP_SEC, DBG_LOUD, "The SECR-value %x\n",
		 sec_reg_value);
	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_WPA_CONFIG, &sec_reg_value);
}