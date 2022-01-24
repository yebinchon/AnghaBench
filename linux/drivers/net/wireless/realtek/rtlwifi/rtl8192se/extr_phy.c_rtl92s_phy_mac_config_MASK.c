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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int MAC_2T_ARRAYLENGTH ; 
 int* rtl8192semac_2t_array ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

bool FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u32 i;
	u32 arraylength;
	u32 *ptrarray;

	arraylength = MAC_2T_ARRAYLENGTH;
	ptrarray = rtl8192semac_2t_array;

	for (i = 0; i < arraylength; i = i + 2)
		FUNC1(rtlpriv, ptrarray[i], (u8)ptrarray[i + 1]);

	return true;
}