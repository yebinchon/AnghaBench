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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_DBI_CTRL ; 
 int /*<<< orphan*/  REG_DBI_FLAG ; 
 int /*<<< orphan*/  REG_DBI_RDATA ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

u32 FUNC6(struct ieee80211_hw *hw, u16 offset, u8 direct)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32 value;

	FUNC4(rtlpriv, REG_DBI_CTRL, (offset & 0xFFC));
	FUNC3(rtlpriv, REG_DBI_FLAG, FUNC0(1) | direct);
	FUNC5(10);
	value = FUNC2(rtlpriv, REG_DBI_RDATA);
	return value;
}