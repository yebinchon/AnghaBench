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
struct dig_t {int cur_igvalue; int pre_igvalue; int dig_enable_flag; int /*<<< orphan*/  back_val; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_DIG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  ROFDM0_XAAGCCORE1 ; 
 int /*<<< orphan*/  ROFDM0_XBAGCCORE1 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct dig_t *de_digtable = &rtlpriv->dm_digtable;

	FUNC0(rtlpriv, COMP_DIG, DBG_LOUD,
		 "cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\n",
		 de_digtable->cur_igvalue, de_digtable->pre_igvalue,
		 de_digtable->back_val);
	if (de_digtable->dig_enable_flag == false) {
		FUNC0(rtlpriv, COMP_DIG, DBG_LOUD, "DIG is disabled\n");
		de_digtable->pre_igvalue = 0x17;
		return;
	}
	if (de_digtable->pre_igvalue != de_digtable->cur_igvalue) {
		FUNC2(hw, ROFDM0_XAAGCCORE1, 0x7f,
			      de_digtable->cur_igvalue);
		FUNC2(hw, ROFDM0_XBAGCCORE1, 0x7f,
			      de_digtable->cur_igvalue);
		de_digtable->pre_igvalue = de_digtable->cur_igvalue;
	}
}