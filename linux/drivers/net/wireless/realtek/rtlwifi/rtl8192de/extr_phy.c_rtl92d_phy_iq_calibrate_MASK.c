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
typedef  int u8 ;
struct rtl_hal {scalar_t__ current_bandtype; int /*<<< orphan*/  version; } ;
struct rtl_phy {long reg_e94; long reg_e9c; long reg_eb4; long reg_ebc; TYPE_1__* iqk_matrix; int /*<<< orphan*/  current_channel; } ;
struct rtl_priv {struct rtl_hal rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {long** value; int iqk_done; } ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 scalar_t__ BAND_ON_5G ; 
 int COMP_MLME ; 
 int COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FINIT ; 
 int /*<<< orphan*/  INIT_IQK ; 
 int IQK_MATRIX_REG_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,long**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,long**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,long**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,long**,int,int) ; 
 int FUNC7 (struct ieee80211_hw*,long**,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,unsigned long*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,unsigned long*) ; 
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 

void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC11(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
	long result[4][8];
	u8 i, final_candidate, indexforchannel;
	bool patha_ok, pathb_ok;
	long rege94, rege9c, regea4, regeac, regeb4;
	long regebc, regec4, regecc, regtmp = 0;
	bool is12simular, is13simular, is23simular;
	unsigned long flag = 0;

	FUNC1(rtlpriv, FINIT, INIT_IQK,
		"IQK:Start!!!channel %d\n", rtlphy->current_channel);
	for (i = 0; i < 8; i++) {
		result[0][i] = 0;
		result[1][i] = 0;
		result[2][i] = 0;
		result[3][i] = 0;
	}
	final_candidate = 0xff;
	patha_ok = false;
	pathb_ok = false;
	is12simular = false;
	is23simular = false;
	is13simular = false;
	FUNC1(rtlpriv, FINIT, INIT_IQK,
		"IQK !!!currentband %d\n", rtlhal->current_bandtype);
	FUNC8(hw, &flag);
	for (i = 0; i < 3; i++) {
		if (rtlhal->current_bandtype == BAND_ON_5G) {
			FUNC4(hw, result, i);
		} else if (rtlhal->current_bandtype == BAND_ON_2_4G) {
			if (FUNC0(rtlhal->version))
				FUNC3(hw, result, i, true);
			else
				FUNC3(hw, result, i, false);
		}
		if (i == 1) {
			is12simular = FUNC7(hw, result,
								     0, 1);
			if (is12simular) {
				final_candidate = 0;
				break;
			}
		}
		if (i == 2) {
			is13simular = FUNC7(hw, result,
								     0, 2);
			if (is13simular) {
				final_candidate = 0;
				break;
			}
			is23simular = FUNC7(hw, result,
								     1, 2);
			if (is23simular) {
				final_candidate = 1;
			} else {
				for (i = 0; i < 8; i++)
					regtmp += result[3][i];

				if (regtmp != 0)
					final_candidate = 3;
				else
					final_candidate = 0xFF;
			}
		}
	}
	FUNC10(hw, &flag);
	for (i = 0; i < 4; i++) {
		rege94 = result[i][0];
		rege9c = result[i][1];
		regea4 = result[i][2];
		regeac = result[i][3];
		regeb4 = result[i][4];
		regebc = result[i][5];
		regec4 = result[i][6];
		regecc = result[i][7];
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"IQK: rege94=%lx rege9c=%lx regea4=%lx regeac=%lx regeb4=%lx regebc=%lx regec4=%lx regecc=%lx\n",
			rege94, rege9c, regea4, regeac, regeb4, regebc, regec4,
			regecc);
	}
	if (final_candidate != 0xff) {
		rtlphy->reg_e94 = rege94 = result[final_candidate][0];
		rtlphy->reg_e9c = rege9c = result[final_candidate][1];
		regea4 = result[final_candidate][2];
		regeac = result[final_candidate][3];
		rtlphy->reg_eb4 = regeb4 = result[final_candidate][4];
		rtlphy->reg_ebc = regebc = result[final_candidate][5];
		regec4 = result[final_candidate][6];
		regecc = result[final_candidate][7];
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"IQK: final_candidate is %x\n", final_candidate);
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"IQK: rege94=%lx rege9c=%lx regea4=%lx regeac=%lx regeb4=%lx regebc=%lx regec4=%lx regecc=%lx\n",
			rege94, rege9c, regea4, regeac, regeb4, regebc, regec4,
			regecc);
		patha_ok = pathb_ok = true;
	} else {
		rtlphy->reg_e94 = rtlphy->reg_eb4 = 0x100; /* X default value */
		rtlphy->reg_e9c = rtlphy->reg_ebc = 0x0;   /* Y default value */
	}
	if ((rege94 != 0) /*&&(regea4 != 0) */)
		FUNC5(hw, patha_ok, result,
				final_candidate, (regea4 == 0));
	if (FUNC0(rtlhal->version)) {
		if ((regeb4 != 0) /*&&(regec4 != 0) */)
			FUNC6(hw, pathb_ok, result,
						final_candidate, (regec4 == 0));
	}
	if (final_candidate != 0xFF) {
		indexforchannel = FUNC9(
				  rtlphy->current_channel);

		for (i = 0; i < IQK_MATRIX_REG_NUM; i++)
			rtlphy->iqk_matrix[indexforchannel].
				value[0][i] = result[final_candidate][i];
		rtlphy->iqk_matrix[indexforchannel].iqk_done =
			true;

		FUNC2(rtlpriv, COMP_SCAN | COMP_MLME, DBG_LOUD,
			 "IQK OK indexforchannel %d\n", indexforchannel);
	}
}