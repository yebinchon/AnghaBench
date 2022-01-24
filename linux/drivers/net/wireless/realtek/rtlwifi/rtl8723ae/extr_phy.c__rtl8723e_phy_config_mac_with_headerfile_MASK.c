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
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int* RTL8723EMAC_ARRAY ; 
 int RTL8723E_MACARRAYLENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32 i;
	u32 arraylength;
	u32 *ptrarray;

	FUNC0(rtlpriv, COMP_INIT, DBG_TRACE, "Read Rtl723MACPHY_Array\n");
	arraylength = RTL8723E_MACARRAYLENGTH;
	ptrarray = RTL8723EMAC_ARRAY;

	FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
		 "Img:RTL8192CEMAC_2T_ARRAY\n");
	for (i = 0; i < arraylength; i = i + 2)
		FUNC2(rtlpriv, ptrarray[i], (u8) ptrarray[i + 1]);
	return true;
}