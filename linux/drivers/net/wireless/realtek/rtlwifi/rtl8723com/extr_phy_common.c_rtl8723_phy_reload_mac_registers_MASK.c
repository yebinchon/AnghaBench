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
 int IQK_MAC_REG_NUM ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 

void FUNC3(struct ieee80211_hw *hw,
				      u32 *macreg, u32 *macbackup)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u32 i;

	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
		FUNC1(rtlpriv, macreg[i], (u8) macbackup[i]);
	FUNC2(rtlpriv, macreg[i], macbackup[i]);
}