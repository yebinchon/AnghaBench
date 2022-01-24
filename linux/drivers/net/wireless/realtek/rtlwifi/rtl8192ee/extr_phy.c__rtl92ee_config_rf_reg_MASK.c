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
typedef  int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw, u32 addr, u32 data,
				   enum radio_path rfpath, u32 regaddr)
{
	if (addr == 0xfe || addr == 0xffe) {
		FUNC0(50);
	} else {
		FUNC2(hw, rfpath, regaddr, RFREG_OFFSET_MASK, data);
		FUNC3(1);

		if (addr == 0xb6) {
			u32 getvalue;
			u8 count = 0;

			getvalue = FUNC1(hw, rfpath, addr, MASKDWORD);
			FUNC3(1);

			while ((getvalue >> 8) != (data >> 8)) {
				count++;
				FUNC2(hw, rfpath, regaddr,
					      RFREG_OFFSET_MASK, data);
				FUNC3(1);
				getvalue = FUNC1(hw, rfpath, addr,
							 MASKDWORD);
				if (count > 5)
					break;
			}
		}

		if (addr == 0xb2) {
			u32 getvalue;
			u8 count = 0;

			getvalue = FUNC1(hw, rfpath, addr, MASKDWORD);
			FUNC3(1);

			while (getvalue != data) {
				count++;
				FUNC2(hw, rfpath, regaddr,
					      RFREG_OFFSET_MASK, data);
				FUNC3(1);
				FUNC2(hw, rfpath, 0x18,
					      RFREG_OFFSET_MASK, 0x0fc07);
				FUNC3(1);
				getvalue = FUNC1(hw, rfpath, addr,
							 MASKDWORD);
				if (count > 5)
					break;
			}
		}
	}
}