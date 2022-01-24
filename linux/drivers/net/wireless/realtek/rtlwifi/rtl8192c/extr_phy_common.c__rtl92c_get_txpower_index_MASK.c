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
typedef  size_t u8 ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {size_t** txpwrlevel_cck; size_t** txpwrlevel_ht40_1s; size_t** txpwrlevel_ht40_2s; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 size_t RF90_PATH_A ; 
 size_t RF90_PATH_B ; 
 scalar_t__ RF_1T1R ; 
 scalar_t__ RF_1T2R ; 
 scalar_t__ RF_2T2R ; 
 scalar_t__ FUNC0 (struct rtl_phy*) ; 
 struct rtl_efuse* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw, u8 channel,
				      u8 *cckpowerlevel, u8 *ofdmpowerlevel)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_efuse *rtlefuse = FUNC1(FUNC2(hw));
	u8 index = (channel - 1);

	cckpowerlevel[RF90_PATH_A] =
	    rtlefuse->txpwrlevel_cck[RF90_PATH_A][index];
	cckpowerlevel[RF90_PATH_B] =
	    rtlefuse->txpwrlevel_cck[RF90_PATH_B][index];
	if (FUNC0(rtlphy) == RF_1T2R || FUNC0(rtlphy) == RF_1T1R) {
		ofdmpowerlevel[RF90_PATH_A] =
		    rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index];
		ofdmpowerlevel[RF90_PATH_B] =
		    rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_B][index];
	} else if (FUNC0(rtlphy) == RF_2T2R) {
		ofdmpowerlevel[RF90_PATH_A] =
		    rtlefuse->txpwrlevel_ht40_2s[RF90_PATH_A][index];
		ofdmpowerlevel[RF90_PATH_B] =
		    rtlefuse->txpwrlevel_ht40_2s[RF90_PATH_B][index];
	}
}