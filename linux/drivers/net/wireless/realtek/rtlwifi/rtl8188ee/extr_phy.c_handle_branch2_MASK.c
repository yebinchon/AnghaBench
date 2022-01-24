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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, u16 arraylen,
			   u32 *array_table)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u32 v1;
	u32 v2;
	int i;

	for (i = 0; i < arraylen; i = i + 2) {
		v1 = array_table[i];
		v2 = array_table[i+1];
		if (v1 < 0xCDCDCDCD) {
			FUNC4(hw, array_table[i], MASKDWORD,
				      array_table[i + 1]);
			FUNC5(1);
			continue;
		} else { /*This line is the start line of branch.*/
			/* to protect READ_NEXT_PAIR not overrun */
			if (i >= arraylen - 2)
				break;

			if (!FUNC2(hw, array_table[i])) {
				/*Discard the following (offset, data) pairs*/
				FUNC0(v1, v2, i);
				while (v2 != 0xDEAD &&
				       v2 != 0xCDEF &&
				       v2 != 0xCDCD && i < arraylen - 2)
					FUNC0(v1, v2, i);
				i -= 2; /* prevent from for-loop += 2*/
			} else { /* Configure matched pairs and skip
				  * to end of if-else.
				  */
				FUNC0(v1, v2, i);
				while (v2 != 0xDEAD &&
				       v2 != 0xCDEF &&
				       v2 != 0xCDCD && i < arraylen - 2) {
					FUNC4(hw, array_table[i],
						      MASKDWORD,
						      array_table[i + 1]);
					FUNC5(1);
					FUNC0(v1, v2, i);
				}

				while (v2 != 0xDEAD && i < arraylen - 2)
					FUNC0(v1, v2, i);
			}
		}
		FUNC1(rtlpriv, COMP_INIT, DBG_TRACE,
			 "The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\n",
			 array_table[i], array_table[i + 1]);
	}
}