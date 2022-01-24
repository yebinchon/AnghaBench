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
typedef  scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static	void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32	delay = 100;
	u8	regu1;

	regu1 = FUNC2(rtlpriv, 0x554);
	while ((regu1 & FUNC0(5)) && (delay > 0)) {
		regu1 = FUNC2(rtlpriv, 0x554);
		delay--;
		/* We delay only 50us to prevent
		 * being scheduled out. */
		FUNC3(50);
	}
}