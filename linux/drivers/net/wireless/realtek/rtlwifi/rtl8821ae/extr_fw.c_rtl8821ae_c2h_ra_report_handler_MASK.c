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
struct rtl_hal {int /*<<< orphan*/  current_ra_rate; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw,
				     u8 *cmd_buf, u8 cmd_len)
{
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	u8 rate = cmd_buf[0] & 0x3F;

	rtlhal->current_ra_rate = FUNC1(hw, rate);

	FUNC0(hw, rate);
}