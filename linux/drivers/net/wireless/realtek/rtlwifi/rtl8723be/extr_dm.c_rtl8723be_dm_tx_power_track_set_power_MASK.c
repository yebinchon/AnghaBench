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
struct rtl_phy {TYPE_1__* iqk_matrix; int /*<<< orphan*/  current_channel; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_dm {size_t swing_idx_cck; size_t* swing_idx_ofdm; int /*<<< orphan*/  cck_inch14; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum pwr_track_control_method { ____Placeholder_pwr_track_control_method } pwr_track_control_method ;
struct TYPE_2__ {int /*<<< orphan*/ ** value; } ;

/* Variables and functions */
 int BBSWING ; 
 size_t CCK_TABLE_SIZE ; 
 size_t RF90_PATH_A ; 
 size_t RF90_PATH_B ; 
 int TXAGC ; 
 int /*<<< orphan*/ ** cckswing_table_ch14 ; 
 int /*<<< orphan*/ ** cckswing_table_ch1ch13 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_dm* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					enum pwr_track_control_method method,
					u8 rfpath, u8 idx)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_dm *rtldm = FUNC2(FUNC3(hw));
	u8 swing_idx_ofdm_limit = 36;

	if (method == TXAGC) {
		FUNC0(hw, rtlphy->current_channel);
	} else if (method == BBSWING) {
		if (rtldm->swing_idx_cck >= CCK_TABLE_SIZE)
			rtldm->swing_idx_cck = CCK_TABLE_SIZE - 1;

		if (!rtldm->cck_inch14) {
			FUNC4(rtlpriv, 0xa22,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][0]);
			FUNC4(rtlpriv, 0xa23,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][1]);
			FUNC4(rtlpriv, 0xa24,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][2]);
			FUNC4(rtlpriv, 0xa25,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][3]);
			FUNC4(rtlpriv, 0xa26,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][4]);
			FUNC4(rtlpriv, 0xa27,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][5]);
			FUNC4(rtlpriv, 0xa28,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][6]);
			FUNC4(rtlpriv, 0xa29,
			    cckswing_table_ch1ch13[rtldm->swing_idx_cck][7]);
		} else {
			FUNC4(rtlpriv, 0xa22,
			    cckswing_table_ch14[rtldm->swing_idx_cck][0]);
			FUNC4(rtlpriv, 0xa23,
			    cckswing_table_ch14[rtldm->swing_idx_cck][1]);
			FUNC4(rtlpriv, 0xa24,
			    cckswing_table_ch14[rtldm->swing_idx_cck][2]);
			FUNC4(rtlpriv, 0xa25,
			    cckswing_table_ch14[rtldm->swing_idx_cck][3]);
			FUNC4(rtlpriv, 0xa26,
			    cckswing_table_ch14[rtldm->swing_idx_cck][4]);
			FUNC4(rtlpriv, 0xa27,
			    cckswing_table_ch14[rtldm->swing_idx_cck][5]);
			FUNC4(rtlpriv, 0xa28,
			    cckswing_table_ch14[rtldm->swing_idx_cck][6]);
			FUNC4(rtlpriv, 0xa29,
			    cckswing_table_ch14[rtldm->swing_idx_cck][7]);
		}

		if (rfpath == RF90_PATH_A) {
			if (rtldm->swing_idx_ofdm[RF90_PATH_A] <
			    swing_idx_ofdm_limit)
				swing_idx_ofdm_limit =
					rtldm->swing_idx_ofdm[RF90_PATH_A];

			FUNC1(hw,
				rtldm->swing_idx_ofdm[rfpath], rfpath,
				rtlphy->iqk_matrix[idx].value[0][0],
				rtlphy->iqk_matrix[idx].value[0][1]);
		} else if (rfpath == RF90_PATH_B) {
			if (rtldm->swing_idx_ofdm[RF90_PATH_B] <
			    swing_idx_ofdm_limit)
				swing_idx_ofdm_limit =
					rtldm->swing_idx_ofdm[RF90_PATH_B];

			FUNC1(hw,
				rtldm->swing_idx_ofdm[rfpath], rfpath,
				rtlphy->iqk_matrix[idx].value[0][4],
				rtlphy->iqk_matrix[idx].value[0][5]);
		}
	} else {
		return;
	}
}