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
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int* RTL8192EE_RADIOA_ARRAY ; 
 int RTL8192EE_RADIOA_ARRAY_LEN ; 
 int* RTL8192EE_RADIOB_ARRAY ; 
 int RTL8192EE_RADIOB_ARRAY_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

bool FUNC6(struct ieee80211_hw  *hw,
					   enum radio_path rfpath)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	int i;
	u32 *array;
	u16 len;
	u32 v1 = 0, v2 = 0;

	switch (rfpath) {
	case RF90_PATH_A:
		len = RTL8192EE_RADIOA_ARRAY_LEN;
		array = RTL8192EE_RADIOA_ARRAY;
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
			 "Radio_A:RTL8192EE_RADIOA_ARRAY %d\n" , len);
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
		for (i = 0; i < len; i = i + 2) {
			v1 = array[i];
			v2 = array[i+1];
			if (v1 < 0xcdcdcdcd) {
				FUNC3(hw, v1, v2);
				continue;
			} else {/*This line is the start line of branch.*/
				/* to protect READ_NEXT_PAIR not overrun */
				if (i >= len - 2)
					break;

				if (!FUNC2(hw , array[i])) {
					/*Discard the following pairs*/
					FUNC0(v1, v2, i);
					while (v2 != 0xDEAD &&
					       v2 != 0xCDEF &&
					       v2 != 0xCDCD && i < len - 2) {
						FUNC0(v1, v2, i);
					}
					i -= 2; /* prevent from for-loop += 2*/
				} else {
					/* Configure matched pairs and
					 * skip to end of if-else.
					 */
					FUNC0(v1, v2, i);
					while (v2 != 0xDEAD &&
					       v2 != 0xCDEF &&
					       v2 != 0xCDCD && i < len - 2) {
						FUNC3(hw,
									   v1,
									   v2);
						FUNC0(v1, v2, i);
					}

					while (v2 != 0xDEAD && i < len - 2)
						FUNC0(v1, v2, i);
				}
			}
		}
		break;

	case RF90_PATH_B:
		len = RTL8192EE_RADIOB_ARRAY_LEN;
		array = RTL8192EE_RADIOB_ARRAY;
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
			 "Radio_A:RTL8192EE_RADIOB_ARRAY %d\n" , len);
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
		for (i = 0; i < len; i = i + 2) {
			v1 = array[i];
			v2 = array[i+1];
			if (v1 < 0xcdcdcdcd) {
				FUNC4(hw, v1, v2);
				continue;
			} else {/*This line is the start line of branch.*/
				/* to protect READ_NEXT_PAIR not overrun */
				if (i >= len - 2)
					break;

				if (!FUNC2(hw , array[i])) {
					/*Discard the following pairs*/
					FUNC0(v1, v2, i);
					while (v2 != 0xDEAD &&
					       v2 != 0xCDEF &&
					       v2 != 0xCDCD && i < len - 2) {
						FUNC0(v1, v2, i);
					}
					i -= 2; /* prevent from for-loop += 2*/
				} else {
					/* Configure matched pairs and
					 * skip to end of if-else.
					 */
					FUNC0(v1, v2, i);
					while (v2 != 0xDEAD &&
					       v2 != 0xCDEF &&
					       v2 != 0xCDCD && i < len - 2) {
						FUNC4(hw,
									   v1,
									   v2);
						FUNC0(v1, v2, i);
					}

					while (v2 != 0xDEAD && i < len - 2)
						FUNC0(v1, v2, i);
				}
			}
		}
		break;
	case RF90_PATH_C:
	case RF90_PATH_D:
		break;
	}
	return true;
}