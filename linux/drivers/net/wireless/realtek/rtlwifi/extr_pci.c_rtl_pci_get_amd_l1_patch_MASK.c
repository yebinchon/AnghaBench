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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct rtl_pci* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_pci *rtlpci = FUNC4(FUNC5(hw));

	bool status = false;
	u8 offset_e0;
	unsigned int offset_e4;

	FUNC3(rtlpci->pdev, 0xe0, 0xa0);

	FUNC1(rtlpci->pdev, 0xe0, &offset_e0);

	if (offset_e0 == 0xA0) {
		FUNC2(rtlpci->pdev, 0xe4, &offset_e4);
		if (offset_e4 & FUNC0(23))
			status = true;
	}

	return status;
}