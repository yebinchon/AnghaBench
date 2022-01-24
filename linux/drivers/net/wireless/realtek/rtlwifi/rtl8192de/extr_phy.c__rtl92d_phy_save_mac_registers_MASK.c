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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FINIT ; 
 int /*<<< orphan*/  INIT_IQK ; 
 int IQK_MAC_REG_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int) ; 
 int FUNC3 (struct rtl_priv*,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
	u32 *macreg, u32 *macbackup)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32 i;

	FUNC0(rtlpriv, FINIT, INIT_IQK,  "Save MAC parameters.\n");
	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
		macbackup[i] = FUNC2(rtlpriv, macreg[i]);
	macbackup[i] = FUNC3(rtlpriv, macreg[i]);
}