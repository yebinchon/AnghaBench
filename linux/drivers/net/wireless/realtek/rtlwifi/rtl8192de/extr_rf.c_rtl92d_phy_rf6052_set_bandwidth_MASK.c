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
struct rtl_phy {int num_total_rfpath; int* rfreg_chnlval; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  HT_CHANNEL_WIDTH_20 129 
#define  HT_CHANNEL_WIDTH_20_40 128 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct ieee80211_hw *hw, u8 bandwidth)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	u8 rfpath;

	switch (bandwidth) {
	case HT_CHANNEL_WIDTH_20:
		for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
			rtlphy->rfreg_chnlval[rfpath] = ((rtlphy->rfreg_chnlval
					[rfpath] & 0xfffff3ff) | 0x0400);
			FUNC4(hw, rfpath, RF_CHNLBW, FUNC0(10) |
				      FUNC0(11), 0x01);

			FUNC1(rtlpriv, COMP_RF, DBG_LOUD,
				 "20M RF 0x18 = 0x%x\n",
				 rtlphy->rfreg_chnlval[rfpath]);
		}

		break;
	case HT_CHANNEL_WIDTH_20_40:
		for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
			rtlphy->rfreg_chnlval[rfpath] =
			    ((rtlphy->rfreg_chnlval[rfpath] & 0xfffff3ff));
			FUNC4(hw, rfpath, RF_CHNLBW, FUNC0(10) | FUNC0(11),
				      0x00);
			FUNC1(rtlpriv, COMP_RF, DBG_LOUD,
				 "40M RF 0x18 = 0x%x\n",
				 rtlphy->rfreg_chnlval[rfpath]);
		}
		break;
	default:
		FUNC2("unknown bandwidth: %#X\n", bandwidth);
		break;
	}
}