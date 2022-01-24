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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2C_8821AE_P2P_PS_CTW_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ieee80211_hw *hw, u8 ctwindow)
{
	u8 u1_ctwindow_period[1] = { ctwindow};

	FUNC0(hw, H2C_8821AE_P2P_PS_CTW_CMD, 1,
			       u1_ctwindow_period);
}