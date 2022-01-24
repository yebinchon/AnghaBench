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
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int RTL8723ERADIOA_1TARRAYLENGTH ; 
 int* RTL8723E_RADIOA_1TARRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

bool FUNC3(struct ieee80211_hw *hw,
					    enum radio_path rfpath)
{
	int i;
	bool rtstatus = true;
	u32 *radioa_array_table;
	u16 radioa_arraylen;

	radioa_arraylen = RTL8723ERADIOA_1TARRAYLENGTH;
	radioa_array_table = RTL8723E_RADIOA_1TARRAY;

	rtstatus = true;

	switch (rfpath) {
	case RF90_PATH_A:
		for (i = 0; i < radioa_arraylen; i = i + 2) {
			if (radioa_array_table[i] == 0xfe) {
				FUNC0(50);
			} else if (radioa_array_table[i] == 0xfd) {
				FUNC0(5);
			} else if (radioa_array_table[i] == 0xfc) {
				FUNC0(1);
			} else if (radioa_array_table[i] == 0xfb) {
				FUNC2(50);
			} else if (radioa_array_table[i] == 0xfa) {
				FUNC2(5);
			} else if (radioa_array_table[i] == 0xf9) {
				FUNC2(1);
			} else {
				FUNC1(hw, rfpath, radioa_array_table[i],
					      RFREG_OFFSET_MASK,
					      radioa_array_table[i + 1]);
				FUNC2(1);
			}
		}
		break;
	case RF90_PATH_B:
	case RF90_PATH_C:
	case RF90_PATH_D:
		break;
	}
	return true;
}