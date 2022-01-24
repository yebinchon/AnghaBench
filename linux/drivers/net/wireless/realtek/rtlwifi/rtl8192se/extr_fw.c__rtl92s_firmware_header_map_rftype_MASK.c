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
typedef  int u8 ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  RF_1T1R 130 
#define  RF_1T2R 129 
#define  RF_2T2R 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);

	switch (rtlphy->rf_type) {
	case RF_1T1R:
		return 0x11;
	case RF_1T2R:
		return 0x12;
	case RF_2T2R:
		return 0x22;
	default:
		FUNC0("Unknown RF type(%x)\n", rtlphy->rf_type);
		break;
	}
	return 0x22;
}