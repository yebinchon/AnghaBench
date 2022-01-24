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
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_efuse {int /*<<< orphan*/  txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* phy_rf6052_set_ofdm_txpower ) (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* phy_rf6052_set_cck_txpower ) (struct ieee80211_hw*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rtl_efuse* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_efuse *rtlefuse = FUNC2(FUNC3(hw));
	u8 cckpowerlevel[2], ofdmpowerlevel[2];

	if (!rtlefuse->txpwr_fromeprom)
		return;
	FUNC1(hw, channel,
				  &cckpowerlevel[0], &ofdmpowerlevel[0]);
	FUNC0(hw, channel, &cckpowerlevel[0],
				     &ofdmpowerlevel[0]);
	rtlpriv->cfg->ops->phy_rf6052_set_cck_txpower(hw, &cckpowerlevel[0]);
	rtlpriv->cfg->ops->phy_rf6052_set_ofdm_txpower(hw, &ofdmpowerlevel[0],
						       channel);
}