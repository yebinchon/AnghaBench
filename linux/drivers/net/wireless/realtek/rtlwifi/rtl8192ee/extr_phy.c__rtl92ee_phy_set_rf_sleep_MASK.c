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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	FUNC2(rtlpriv, REG_TXPAUSE, 0xFF);
	FUNC1(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);

	FUNC2(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
	FUNC2(rtlpriv, REG_SPS0_CTRL, 0x22);
}