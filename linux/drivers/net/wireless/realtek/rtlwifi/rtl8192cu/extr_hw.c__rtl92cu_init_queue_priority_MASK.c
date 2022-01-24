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
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
						bool wmm_enable,
						u8 out_ep_num,
						u8 queue_sel)
{
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));

	if (FUNC0(rtlhal->version))
		FUNC1(hw, wmm_enable, out_ep_num,
						   queue_sel);
	else
		FUNC2(hw, wmm_enable, out_ep_num,
						   queue_sel);
}