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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RADIOA_1TARRAYLENGTH ; 
 int RADIOA_2TARRAYLENGTH ; 
 int RADIOB_1TARRAYLENGTH ; 
 int RADIOB_2TARRAYLENGTH ; 
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/ * RTL8192CERADIOA_2TARRAY ; 
 int /*<<< orphan*/ * RTL8192CE_RADIOA_1TARRAY ; 
 int /*<<< orphan*/ * RTL8192CE_RADIOB_1TARRAY ; 
 int /*<<< orphan*/ * RTL8192CE_RADIOB_2TARRAY ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC6(struct ieee80211_hw *hw,
					  enum radio_path rfpath)
{

	int i;
	u32 *radioa_array_table;
	u32 *radiob_array_table;
	u16 radioa_arraylen, radiob_arraylen;
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));

	if (FUNC0(rtlhal->version)) {
		radioa_arraylen = RADIOA_2TARRAYLENGTH;
		radioa_array_table = RTL8192CERADIOA_2TARRAY;
		radiob_arraylen = RADIOB_2TARRAYLENGTH;
		radiob_array_table = RTL8192CE_RADIOB_2TARRAY;
		FUNC1(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Radio_A:RTL8192CERADIOA_2TARRAY\n");
		FUNC1(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Radio_B:RTL8192CE_RADIOB_2TARRAY\n");
	} else {
		radioa_arraylen = RADIOA_1TARRAYLENGTH;
		radioa_array_table = RTL8192CE_RADIOA_1TARRAY;
		radiob_arraylen = RADIOB_1TARRAYLENGTH;
		radiob_array_table = RTL8192CE_RADIOB_1TARRAY;
		FUNC1(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Radio_A:RTL8192CE_RADIOA_1TARRAY\n");
		FUNC1(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Radio_B:RTL8192CE_RADIOB_1TARRAY\n");
	}
	FUNC1(rtlpriv, COMP_INIT, DBG_TRACE, "Radio No %x\n", rfpath);
	switch (rfpath) {
	case RF90_PATH_A:
		for (i = 0; i < radioa_arraylen; i = i + 2) {
			FUNC5(hw, rfpath, radioa_array_table[i],
					RFREG_OFFSET_MASK,
					radioa_array_table[i + 1]);
		}
		break;
	case RF90_PATH_B:
		for (i = 0; i < radiob_arraylen; i = i + 2) {
			FUNC5(hw, rfpath, radiob_array_table[i],
					RFREG_OFFSET_MASK,
					radiob_array_table[i + 1]);
		}
		break;
	case RF90_PATH_C:
	case RF90_PATH_D:
		FUNC2("Incorrect rfpath %#x\n", rfpath);
		break;
	default:
		FUNC2("switch case %#x not processed\n", rfpath);
		break;
	}
	return true;
}