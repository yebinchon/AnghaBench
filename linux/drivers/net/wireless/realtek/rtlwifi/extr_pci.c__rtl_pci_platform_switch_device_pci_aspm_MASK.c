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
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HARDWARE_TYPE_RTL8192SE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct rtl_hal* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC5(
			struct ieee80211_hw *hw,
			u8 value)
{
	struct rtl_pci *rtlpci = FUNC2(FUNC3(hw));
	struct rtl_hal *rtlhal = FUNC1(FUNC4(hw));

	if (rtlhal->hw_type != HARDWARE_TYPE_RTL8192SE)
		value |= 0x40;

	FUNC0(rtlpci->pdev, 0x80, value);

	return false;
}