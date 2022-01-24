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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 scalar_t__ HARDWARE_TYPE_RTL8821AE ; 
 int* RTL8812AE_PHY_REG_ARRAY_PG ; 
 int RTL8812AE_PHY_REG_ARRAY_PGLEN ; 
 int* RTL8821AE_PHY_REG_ARRAY_PG ; 
 int RTL8821AE_PHY_REG_ARRAY_PGLEN ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_hw *hw,
							u8 configtype)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC5(rtlpriv);
	int i;
	u32 *array;
	u16 arraylen;
	u32 v1, v2, v3, v4, v5, v6;

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
		arraylen = RTL8812AE_PHY_REG_ARRAY_PGLEN;
		array = RTL8812AE_PHY_REG_ARRAY_PG;
	} else {
		arraylen = RTL8821AE_PHY_REG_ARRAY_PGLEN;
		array = RTL8821AE_PHY_REG_ARRAY_PG;
	}

	if (configtype != BASEBAND_CONFIG_PHY_REG) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "configtype != BaseBand_Config_PHY_REG\n");
		return true;
	}
	for (i = 0; i < arraylen; i += 6) {
		v1 = array[i];
		v2 = array[i+1];
		v3 = array[i+2];
		v4 = array[i+3];
		v5 = array[i+4];
		v6 = array[i+5];

		if (v1 < 0xCDCDCDCD) {
			if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE &&
				(v4 == 0xfe || v4 == 0xffe)) {
				FUNC4(50);
				continue;
			}

			if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
				if (v4 == 0xfe)
					FUNC4(50);
				else if (v4 == 0xfd)
					FUNC3(5);
				else if (v4 == 0xfc)
					FUNC3(1);
				else if (v4 == 0xfb)
					FUNC7(50);
				else if (v4 == 0xfa)
					FUNC7(5);
				else if (v4 == 0xf9)
					FUNC7(1);
			}
			FUNC2(hw, v1, v2, v3,
							  v4, v5, v6);
			continue;
		} else {
			 /*don't need the hw_body*/
			if (!FUNC1(hw, v1)) {
				i += 2; /* skip the pair of expression*/
				v1 = array[i];
				v2 = array[i+1];
				v3 = array[i+2];
				while (v2 != 0xDEAD) {
					i += 3;
					v1 = array[i];
					v2 = array[i+1];
					v3 = array[i+2];
				}
			}
		}
	}

	return true;
}