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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  DESC_RATE11M 175 
#define  DESC_RATE12M 174 
#define  DESC_RATE18M 173 
#define  DESC_RATE1M 172 
#define  DESC_RATE24M 171 
#define  DESC_RATE2M 170 
#define  DESC_RATE36M 169 
#define  DESC_RATE48M 168 
#define  DESC_RATE54M 167 
#define  DESC_RATE5_5M 166 
#define  DESC_RATE6M 165 
#define  DESC_RATE9M 164 
#define  DESC_RATEMCS0 163 
#define  DESC_RATEMCS1 162 
#define  DESC_RATEMCS10 161 
#define  DESC_RATEMCS11 160 
#define  DESC_RATEMCS12 159 
#define  DESC_RATEMCS13 158 
#define  DESC_RATEMCS14 157 
#define  DESC_RATEMCS15 156 
#define  DESC_RATEMCS2 155 
#define  DESC_RATEMCS3 154 
#define  DESC_RATEMCS4 153 
#define  DESC_RATEMCS5 152 
#define  DESC_RATEMCS6 151 
#define  DESC_RATEMCS7 150 
#define  DESC_RATEMCS8 149 
#define  DESC_RATEMCS9 148 
#define  DESC_RATEVHT1SS_MCS0 147 
#define  DESC_RATEVHT1SS_MCS1 146 
#define  DESC_RATEVHT1SS_MCS2 145 
#define  DESC_RATEVHT1SS_MCS3 144 
#define  DESC_RATEVHT1SS_MCS4 143 
#define  DESC_RATEVHT1SS_MCS5 142 
#define  DESC_RATEVHT1SS_MCS6 141 
#define  DESC_RATEVHT1SS_MCS7 140 
#define  DESC_RATEVHT1SS_MCS8 139 
#define  DESC_RATEVHT1SS_MCS9 138 
#define  DESC_RATEVHT2SS_MCS0 137 
#define  DESC_RATEVHT2SS_MCS1 136 
#define  DESC_RATEVHT2SS_MCS2 135 
#define  DESC_RATEVHT2SS_MCS3 134 
#define  DESC_RATEVHT2SS_MCS4 133 
#define  DESC_RATEVHT2SS_MCS5 132 
#define  DESC_RATEVHT2SS_MCS6 131 
#define  DESC_RATEVHT2SS_MCS7 130 
#define  DESC_RATEVHT2SS_MCS8 129 
#define  DESC_RATEVHT2SS_MCS9 128 
 int /*<<< orphan*/  MASKBYTE0 ; 
 int /*<<< orphan*/  MASKBYTE1 ; 
 int /*<<< orphan*/  MASKBYTE2 ; 
 int /*<<< orphan*/  MASKBYTE3 ; 
 scalar_t__ RF90_PATH_A ; 
 scalar_t__ RF90_PATH_B ; 
 int /*<<< orphan*/  RTXAGC_A_CCK11_CCK1 ; 
 int /*<<< orphan*/  RTXAGC_A_MCS03_MCS00 ; 
 int /*<<< orphan*/  RTXAGC_A_MCS07_MCS04 ; 
 int /*<<< orphan*/  RTXAGC_A_MCS11_MCS08 ; 
 int /*<<< orphan*/  RTXAGC_A_MCS15_MCS12 ; 
 int /*<<< orphan*/  RTXAGC_A_NSS1INDEX3_NSS1INDEX0 ; 
 int /*<<< orphan*/  RTXAGC_A_NSS1INDEX7_NSS1INDEX4 ; 
 int /*<<< orphan*/  RTXAGC_A_NSS2INDEX1_NSS1INDEX8 ; 
 int /*<<< orphan*/  RTXAGC_A_NSS2INDEX5_NSS2INDEX2 ; 
 int /*<<< orphan*/  RTXAGC_A_NSS2INDEX9_NSS2INDEX6 ; 
 int /*<<< orphan*/  RTXAGC_A_OFDM18_OFDM6 ; 
 int /*<<< orphan*/  RTXAGC_A_OFDM54_OFDM24 ; 
 int /*<<< orphan*/  RTXAGC_B_CCK11_CCK1 ; 
 int /*<<< orphan*/  RTXAGC_B_MCS03_MCS00 ; 
 int /*<<< orphan*/  RTXAGC_B_MCS07_MCS04 ; 
 int /*<<< orphan*/  RTXAGC_B_MCS11_MCS08 ; 
 int /*<<< orphan*/  RTXAGC_B_MCS15_MCS12 ; 
 int /*<<< orphan*/  RTXAGC_B_NSS1INDEX3_NSS1INDEX0 ; 
 int /*<<< orphan*/  RTXAGC_B_NSS1INDEX7_NSS1INDEX4 ; 
 int /*<<< orphan*/  RTXAGC_B_NSS2INDEX1_NSS1INDEX8 ; 
 int /*<<< orphan*/  RTXAGC_B_NSS2INDEX5_NSS2INDEX2 ; 
 int /*<<< orphan*/  RTXAGC_B_NSS2INDEX9_NSS2INDEX6 ; 
 int /*<<< orphan*/  RTXAGC_B_OFDM18_OFDM6 ; 
 int /*<<< orphan*/  RTXAGC_B_OFDM54_OFDM24 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
					     u8 power_index, u8 path, u8 rate)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	if (path == RF90_PATH_A) {
		switch (rate) {
		case DESC_RATE1M:
			FUNC2(hw, RTXAGC_A_CCK11_CCK1,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE2M:
			FUNC2(hw, RTXAGC_A_CCK11_CCK1,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE5_5M:
			FUNC2(hw, RTXAGC_A_CCK11_CCK1,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE11M:
			FUNC2(hw, RTXAGC_A_CCK11_CCK1,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATE6M:
			FUNC2(hw, RTXAGC_A_OFDM18_OFDM6,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE9M:
			FUNC2(hw, RTXAGC_A_OFDM18_OFDM6,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE12M:
			FUNC2(hw, RTXAGC_A_OFDM18_OFDM6,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE18M:
			FUNC2(hw, RTXAGC_A_OFDM18_OFDM6,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATE24M:
			FUNC2(hw, RTXAGC_A_OFDM54_OFDM24,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE36M:
			FUNC2(hw, RTXAGC_A_OFDM54_OFDM24,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE48M:
			FUNC2(hw, RTXAGC_A_OFDM54_OFDM24,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE54M:
			FUNC2(hw, RTXAGC_A_OFDM54_OFDM24,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS0:
			FUNC2(hw, RTXAGC_A_MCS03_MCS00,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS1:
			FUNC2(hw, RTXAGC_A_MCS03_MCS00,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS2:
			FUNC2(hw, RTXAGC_A_MCS03_MCS00,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS3:
			FUNC2(hw, RTXAGC_A_MCS03_MCS00,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS4:
			FUNC2(hw, RTXAGC_A_MCS07_MCS04,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS5:
			FUNC2(hw, RTXAGC_A_MCS07_MCS04,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS6:
			FUNC2(hw, RTXAGC_A_MCS07_MCS04,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS7:
			FUNC2(hw, RTXAGC_A_MCS07_MCS04,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS8:
			FUNC2(hw, RTXAGC_A_MCS11_MCS08,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS9:
			FUNC2(hw, RTXAGC_A_MCS11_MCS08,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS10:
			FUNC2(hw, RTXAGC_A_MCS11_MCS08,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS11:
			FUNC2(hw, RTXAGC_A_MCS11_MCS08,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS12:
			FUNC2(hw, RTXAGC_A_MCS15_MCS12,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS13:
			FUNC2(hw, RTXAGC_A_MCS15_MCS12,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS14:
			FUNC2(hw, RTXAGC_A_MCS15_MCS12,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS15:
			FUNC2(hw, RTXAGC_A_MCS15_MCS12,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS0:
			FUNC2(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS1:
			FUNC2(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT1SS_MCS2:
			FUNC2(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT1SS_MCS3:
			FUNC2(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS4:
			FUNC2(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS5:
			FUNC2(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT1SS_MCS6:
			FUNC2(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT1SS_MCS7:
			FUNC2(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS8:
			FUNC2(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS9:
			FUNC2(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS0:
			FUNC2(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS1:
			FUNC2(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT2SS_MCS2:
			FUNC2(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT2SS_MCS3:
			FUNC2(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS4:
			FUNC2(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS5:
			FUNC2(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT2SS_MCS6:
			FUNC2(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT2SS_MCS7:
			FUNC2(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS8:
			FUNC2(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS9:
			FUNC2(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE3, power_index);
			break;
		default:
			FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
				"Invalid Rate!!\n");
			break;
		}
	} else if (path == RF90_PATH_B) {
		switch (rate) {
		case DESC_RATE1M:
			FUNC2(hw, RTXAGC_B_CCK11_CCK1,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE2M:
			FUNC2(hw, RTXAGC_B_CCK11_CCK1,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE5_5M:
			FUNC2(hw, RTXAGC_B_CCK11_CCK1,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE11M:
			FUNC2(hw, RTXAGC_B_CCK11_CCK1,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATE6M:
			FUNC2(hw, RTXAGC_B_OFDM18_OFDM6,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE9M:
			FUNC2(hw, RTXAGC_B_OFDM18_OFDM6,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE12M:
			FUNC2(hw, RTXAGC_B_OFDM18_OFDM6,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE18M:
			FUNC2(hw, RTXAGC_B_OFDM18_OFDM6,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATE24M:
			FUNC2(hw, RTXAGC_B_OFDM54_OFDM24,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATE36M:
			FUNC2(hw, RTXAGC_B_OFDM54_OFDM24,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATE48M:
			FUNC2(hw, RTXAGC_B_OFDM54_OFDM24,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATE54M:
			FUNC2(hw, RTXAGC_B_OFDM54_OFDM24,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS0:
			FUNC2(hw, RTXAGC_B_MCS03_MCS00,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS1:
			FUNC2(hw, RTXAGC_B_MCS03_MCS00,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS2:
			FUNC2(hw, RTXAGC_B_MCS03_MCS00,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS3:
			FUNC2(hw, RTXAGC_B_MCS03_MCS00,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS4:
			FUNC2(hw, RTXAGC_B_MCS07_MCS04,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS5:
			FUNC2(hw, RTXAGC_B_MCS07_MCS04,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS6:
			FUNC2(hw, RTXAGC_B_MCS07_MCS04,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS7:
			FUNC2(hw, RTXAGC_B_MCS07_MCS04,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS8:
			FUNC2(hw, RTXAGC_B_MCS11_MCS08,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS9:
			FUNC2(hw, RTXAGC_B_MCS11_MCS08,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS10:
			FUNC2(hw, RTXAGC_B_MCS11_MCS08,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS11:
			FUNC2(hw, RTXAGC_B_MCS11_MCS08,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEMCS12:
			FUNC2(hw, RTXAGC_B_MCS15_MCS12,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEMCS13:
			FUNC2(hw, RTXAGC_B_MCS15_MCS12,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEMCS14:
			FUNC2(hw, RTXAGC_B_MCS15_MCS12,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEMCS15:
			FUNC2(hw, RTXAGC_B_MCS15_MCS12,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS0:
			FUNC2(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS1:
			FUNC2(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT1SS_MCS2:
			FUNC2(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT1SS_MCS3:
			FUNC2(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS4:
			FUNC2(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS5:
			FUNC2(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT1SS_MCS6:
			FUNC2(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT1SS_MCS7:
			FUNC2(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT1SS_MCS8:
			FUNC2(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT1SS_MCS9:
			FUNC2(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS0:
			FUNC2(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS1:
			FUNC2(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT2SS_MCS2:
			FUNC2(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT2SS_MCS3:
			FUNC2(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS4:
			FUNC2(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS5:
			FUNC2(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
				      MASKBYTE3, power_index);
			break;
		case DESC_RATEVHT2SS_MCS6:
			FUNC2(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE0, power_index);
			break;
		case DESC_RATEVHT2SS_MCS7:
			FUNC2(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE1, power_index);
			break;
		case DESC_RATEVHT2SS_MCS8:
			FUNC2(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE2, power_index);
			break;
		case DESC_RATEVHT2SS_MCS9:
			FUNC2(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
				      MASKBYTE3, power_index);
			break;
		default:
			FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
				 "Invalid Rate!!\n");
			break;
		}
	} else {
		FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
			 "Invalid RFPath!!\n");
	}
}