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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct ieee80211_hw *hw, bool pi_mode)
{
	u32 mode;

	mode = pi_mode ? 0x01000100 : 0x01000000;
	FUNC0(hw, 0x820, MASKDWORD, mode);
	FUNC0(hw, 0x828, MASKDWORD, mode);
}