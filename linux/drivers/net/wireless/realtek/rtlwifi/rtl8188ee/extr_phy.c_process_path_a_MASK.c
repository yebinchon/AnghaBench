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
struct rtl_hal {scalar_t__ oem_id; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ RT_CID_819X_HP ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
			   u16  radioa_arraylen,
			   u32 *radioa_array_table)
{
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	u32 v1, v2;
	int i;

	for (i = 0; i < radioa_arraylen; i = i + 2) {
		v1 = radioa_array_table[i];
		v2 = radioa_array_table[i+1];
		if (v1 < 0xcdcdcdcd) {
			FUNC1(hw, v1, v2);
		} else { /*This line is the start line of branch.*/
			/* to protect READ_NEXT_PAIR not overrun */
			if (i >= radioa_arraylen - 2)
				break;

			if (!FUNC2(hw, radioa_array_table[i])) {
				/*Discard the following (offset, data) pairs*/
				FUNC0(v1, v2, i);
				while (v2 != 0xDEAD &&
				       v2 != 0xCDEF &&
				       v2 != 0xCDCD &&
				       i < radioa_arraylen - 2) {
					FUNC0(v1, v2, i);
				}
				i -= 2; /* prevent from for-loop += 2*/
			} else { /* Configure matched pairs and
				  * skip to end of if-else.
				  */
				FUNC0(v1, v2, i);
				while (v2 != 0xDEAD &&
				       v2 != 0xCDEF &&
				       v2 != 0xCDCD &&
				       i < radioa_arraylen - 2) {
					FUNC1(hw, v1, v2);
					FUNC0(v1, v2, i);
				}

				while (v2 != 0xDEAD &&
				       i < radioa_arraylen - 2)
					FUNC0(v1, v2, i);
			}
		}
	}

	if (rtlhal->oem_id == RT_CID_819X_HP)
		FUNC1(hw, 0x52, 0x7E4BD);
}