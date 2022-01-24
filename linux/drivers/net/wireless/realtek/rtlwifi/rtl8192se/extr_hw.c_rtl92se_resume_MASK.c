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
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct rtl_pci* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_pci *rtlpci = FUNC2(FUNC3(hw));
	u32 val;

	FUNC0(rtlpci->pdev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC1(rtlpci->pdev, 0x40,
			val & 0xffff00ff);
}