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
typedef  int /*<<< orphan*/  u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
					  u32 val_0x6c0, u32 val_0x6c8,
					  u32 val_0x6cc)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "set coex table, set 0x6c0=0x%x\n", val_0x6c0);
	FUNC3(rtlpriv, 0x6c0, val_0x6c0);

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "set coex table, set 0x6c8=0x%x\n", val_0x6c8);
	FUNC3(rtlpriv, 0x6c8, val_0x6c8);

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "set coex table, set 0x6cc=0x%x\n", val_0x6cc);
	FUNC2(rtlpriv, 0x6cc, val_0x6cc);
}