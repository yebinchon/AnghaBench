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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_hw *hw,
					u8 *ppowerlevel, u8 channel)
{
	u32 writeval[2], powerbase0[2], powerbase1[2];
	u8 index;

	FUNC2(hw, ppowerlevel,
				  channel, &powerbase0[0], &powerbase1[0]);

	for (index = 0; index < 6; index++) {
		FUNC0(hw,
							   channel, index,
							   &powerbase0[0],
							   &powerbase1[0],
							   &writeval[0]);

		FUNC1(hw, index, &writeval[0]);
	}
}