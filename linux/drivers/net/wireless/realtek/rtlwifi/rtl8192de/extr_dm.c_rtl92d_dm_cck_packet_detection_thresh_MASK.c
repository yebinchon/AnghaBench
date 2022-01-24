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
struct TYPE_2__ {int /*<<< orphan*/  version; } ;
struct dig_t {scalar_t__ cursta_cstate; scalar_t__ pre_cck_pd_state; int min_undec_pwdb_for_dm; scalar_t__ cur_cck_pd_state; } ;
struct rtl_priv {TYPE_1__ rtlhal; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 void* CCK_PD_STAGE_HIGHRSSI ; 
 scalar_t__ CCK_PD_STAGE_LOWRSSI ; 
 int /*<<< orphan*/  COMP_DIG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ DIG_STA_CONNECT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASKBYTE2 ; 
 int /*<<< orphan*/  RCCK0_CCA ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,unsigned long*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct dig_t *de_digtable = &rtlpriv->dm_digtable;
	unsigned long flag = 0;

	if (de_digtable->cursta_cstate == DIG_STA_CONNECT) {
		if (de_digtable->pre_cck_pd_state == CCK_PD_STAGE_LOWRSSI) {
			if (de_digtable->min_undec_pwdb_for_dm <= 25)
				de_digtable->cur_cck_pd_state =
							 CCK_PD_STAGE_LOWRSSI;
			else
				de_digtable->cur_cck_pd_state =
							 CCK_PD_STAGE_HIGHRSSI;
		} else {
			if (de_digtable->min_undec_pwdb_for_dm <= 20)
				de_digtable->cur_cck_pd_state =
							 CCK_PD_STAGE_LOWRSSI;
			else
				de_digtable->cur_cck_pd_state =
							 CCK_PD_STAGE_HIGHRSSI;
		}
	} else {
		de_digtable->cur_cck_pd_state = CCK_PD_STAGE_LOWRSSI;
	}
	if (de_digtable->pre_cck_pd_state != de_digtable->cur_cck_pd_state) {
		if (de_digtable->cur_cck_pd_state == CCK_PD_STAGE_LOWRSSI) {
			FUNC2(hw, &flag);
			FUNC5(hw, RCCK0_CCA, MASKBYTE2, 0x83);
			FUNC3(hw, &flag);
		} else {
			FUNC2(hw, &flag);
			FUNC5(hw, RCCK0_CCA, MASKBYTE2, 0xcd);
			FUNC3(hw, &flag);
		}
		de_digtable->pre_cck_pd_state = de_digtable->cur_cck_pd_state;
	}
	FUNC1(rtlpriv, COMP_DIG, DBG_LOUD, "CurSTAConnectState=%s\n",
		 de_digtable->cursta_cstate == DIG_STA_CONNECT ?
		 "DIG_STA_CONNECT " : "DIG_STA_DISCONNECT");
	FUNC1(rtlpriv, COMP_DIG, DBG_LOUD, "CCKPDStage=%s\n",
		 de_digtable->cur_cck_pd_state == CCK_PD_STAGE_LOWRSSI ?
		 "Low RSSI " : "High RSSI ");
	FUNC1(rtlpriv, COMP_DIG, DBG_LOUD, "is92d single phy =%x\n",
		 FUNC0(rtlpriv->rtlhal.version));

}