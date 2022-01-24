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
struct rtl_pci {int up_first_time; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 

void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_pci *rtlpci = FUNC0(FUNC1(hw));

	rtlpci->up_first_time = true;
}