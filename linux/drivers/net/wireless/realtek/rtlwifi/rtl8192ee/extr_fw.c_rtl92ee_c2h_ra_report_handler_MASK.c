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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 

void FUNC2(struct ieee80211_hw *hw,
				   u8 *cmd_buf, u8 cmd_len)
{
	u8 rate = cmd_buf[0] & 0x3F;
	bool collision_state = cmd_buf[3] & FUNC0(0);

	FUNC1(hw, rate, collision_state);
}