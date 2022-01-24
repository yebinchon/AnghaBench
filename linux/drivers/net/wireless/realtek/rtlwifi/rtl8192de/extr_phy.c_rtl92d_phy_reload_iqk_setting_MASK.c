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
typedef  size_t u8 ;
struct rtl_hal {int /*<<< orphan*/  version; int /*<<< orphan*/  load_imrandiqk_setting_for2g; } ;
struct rtl_phy {int need_iqk; TYPE_1__* iqk_matrix; } ;
struct rtl_priv {struct rtl_hal rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__** value; int /*<<< orphan*/  iqk_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int COMP_INIT ; 
 int COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,scalar_t__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,scalar_t__**,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

void FUNC7(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
	u8 indexforchannel;

	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "channel %d\n", channel);
	/*------Do IQK for normal chip and test chip 5G band------- */
	indexforchannel = FUNC4(channel);
	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "indexforchannel %d done %d\n",
		 indexforchannel,
		 rtlphy->iqk_matrix[indexforchannel].iqk_done);
	if (0 && !rtlphy->iqk_matrix[indexforchannel].iqk_done &&
		rtlphy->need_iqk) {
		/* Re Do IQK. */
		FUNC1(rtlpriv, COMP_SCAN | COMP_INIT, DBG_LOUD,
			 "Do IQK Matrix reg for channel:%d....\n", channel);
		FUNC5(hw);
	} else {
		/* Just load the value. */
		/* 2G band just load once. */
		if (((!rtlhal->load_imrandiqk_setting_for2g) &&
		    indexforchannel == 0) || indexforchannel > 0) {
			FUNC1(rtlpriv, COMP_SCAN, DBG_LOUD,
				 "Just Read IQK Matrix reg for channel:%d....\n",
				 channel);
			if ((rtlphy->iqk_matrix[indexforchannel].
			     value[0] != NULL)
				/*&&(regea4 != 0) */)
				FUNC2(hw, true,
					rtlphy->iqk_matrix[
					indexforchannel].value,	0,
					(rtlphy->iqk_matrix[
					indexforchannel].value[0][2] == 0));
			if (FUNC0(rtlhal->version)) {
				if ((rtlphy->iqk_matrix[
					indexforchannel].value[0][4] != 0)
					/*&&(regec4 != 0) */)
					FUNC3(hw,
						true,
						rtlphy->iqk_matrix[
						indexforchannel].value, 0,
						(rtlphy->iqk_matrix[
						indexforchannel].value[0][6]
						== 0));
			}
		}
	}
	rtlphy->need_iqk = false;
	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}