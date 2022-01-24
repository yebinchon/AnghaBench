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
typedef  void* u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int pa_type_2g; int lna_type_2g; int external_pa_2g; int external_lna_2g; int pa_type_5g; int lna_type_5g; int external_pa_5g; int external_lna_5g; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw, u8 *hwinfo,
				    bool autoload_fail)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(rtlpriv);

	if (!autoload_fail) {
		rtlhal->pa_type_2g = hwinfo[0XBC];
		rtlhal->lna_type_2g = hwinfo[0XBD];
		if (rtlhal->pa_type_2g == 0xFF && rtlhal->lna_type_2g == 0xFF) {
			rtlhal->pa_type_2g = 0;
			rtlhal->lna_type_2g = 0;
		}
		rtlhal->external_pa_2g = (rtlhal->pa_type_2g & FUNC0(5)) ? 1 : 0;
		rtlhal->external_lna_2g = (rtlhal->lna_type_2g & FUNC0(7)) ? 1 : 0;

		rtlhal->pa_type_5g = hwinfo[0XBC];
		rtlhal->lna_type_5g = hwinfo[0XBF];
		if (rtlhal->pa_type_5g == 0xFF && rtlhal->lna_type_5g == 0xFF) {
			rtlhal->pa_type_5g = 0;
			rtlhal->lna_type_5g = 0;
		}
		rtlhal->external_pa_5g = (rtlhal->pa_type_5g & FUNC0(1)) ? 1 : 0;
		rtlhal->external_lna_5g = (rtlhal->lna_type_5g & FUNC0(7)) ? 1 : 0;
	} else {
		rtlhal->external_pa_2g  = 0;
		rtlhal->external_lna_2g = 0;
		rtlhal->external_pa_5g  = 0;
		rtlhal->external_lna_5g = 0;
	}
}