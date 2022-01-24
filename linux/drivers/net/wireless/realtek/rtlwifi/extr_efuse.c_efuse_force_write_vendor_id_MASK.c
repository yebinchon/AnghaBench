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
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 

void FUNC2(struct ieee80211_hw *hw)
{
	u8 tmpdata[8] = { 0xFF, 0xFF, 0xEC, 0x10, 0xFF, 0xFF, 0xFF, 0xFF };

	FUNC1(hw, true, true);

	FUNC0(hw, 1, 0xD, tmpdata);

	FUNC1(hw, true, false);

}