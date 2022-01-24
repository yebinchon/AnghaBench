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
struct rtl_dm {int swing_flag_ofdm; int swing_flag_cck; size_t swing_idx_cck; int /*<<< orphan*/ * swing_idx_ofdm; int /*<<< orphan*/  cck_inch14; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum pwr_track_control_method { ____Placeholder_pwr_track_control_method } pwr_track_control_method ;
struct TYPE_2__ {int /*<<< orphan*/ ** value; } ;

/* Variables and functions */
 int BBSWING ; 
 size_t RF90_PATH_A ; 
 size_t RF90_PATH_B ; 
 int TXAGC ; 
 int /*<<< orphan*/ ** cck_tbl_ch14 ; 
 int /*<<< orphan*/ ** cck_tbl_ch1_13 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_dm* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				    enum pwr_track_control_method method,
				    u8 rfpath, u8 channel_mapped_index)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_dm *rtldm = FUNC2(FUNC3(hw));

	if (method == TXAGC) {
		if (rtldm->swing_flag_ofdm ||
		    rtldm->swing_flag_cck) {
			FUNC0(hw,
						     rtlphy->current_channel);
			rtldm->swing_flag_ofdm = false;
			rtldm->swing_flag_cck = false;
		}
	} else if (method == BBSWING) {
		if (!rtldm->cck_inch14) {
			FUNC4(rtlpriv, 0xa22,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][0]);
			FUNC4(rtlpriv, 0xa23,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][1]);
			FUNC4(rtlpriv, 0xa24,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][2]);
			FUNC4(rtlpriv, 0xa25,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][3]);
			FUNC4(rtlpriv, 0xa26,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][4]);
			FUNC4(rtlpriv, 0xa27,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][5]);
			FUNC4(rtlpriv, 0xa28,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][6]);
			FUNC4(rtlpriv, 0xa29,
				       cck_tbl_ch1_13[rtldm->swing_idx_cck][7]);
		} else {
			FUNC4(rtlpriv, 0xa22,
				       cck_tbl_ch14[rtldm->swing_idx_cck][0]);
			FUNC4(rtlpriv, 0xa23,
				       cck_tbl_ch14[rtldm->swing_idx_cck][1]);
			FUNC4(rtlpriv, 0xa24,
				       cck_tbl_ch14[rtldm->swing_idx_cck][2]);
			FUNC4(rtlpriv, 0xa25,
				       cck_tbl_ch14[rtldm->swing_idx_cck][3]);
			FUNC4(rtlpriv, 0xa26,
				       cck_tbl_ch14[rtldm->swing_idx_cck][4]);
			FUNC4(rtlpriv, 0xa27,
				       cck_tbl_ch14[rtldm->swing_idx_cck][5]);
			FUNC4(rtlpriv, 0xa28,
				       cck_tbl_ch14[rtldm->swing_idx_cck][6]);
			FUNC4(rtlpriv, 0xa29,
				       cck_tbl_ch14[rtldm->swing_idx_cck][7]);
		}

		if (rfpath == RF90_PATH_A) {
			FUNC1(hw, rtldm->swing_idx_ofdm[rfpath],
					      rfpath, rtlphy->iqk_matrix
					      [channel_mapped_index].
					      value[0][0],
					      rtlphy->iqk_matrix
					      [channel_mapped_index].
					      value[0][1]);
		} else if (rfpath == RF90_PATH_B) {
			FUNC1(hw, rtldm->swing_idx_ofdm[rfpath],
					      rfpath, rtlphy->iqk_matrix
					      [channel_mapped_index].
					      value[0][4],
					      rtlphy->iqk_matrix
					      [channel_mapped_index].
					      value[0][5]);
		}
	} else {
		return;
	}
}