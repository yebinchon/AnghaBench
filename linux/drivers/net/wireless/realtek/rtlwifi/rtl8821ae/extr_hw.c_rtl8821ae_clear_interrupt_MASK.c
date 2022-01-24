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
 int /*<<< orphan*/  REG_HISR ; 
 int /*<<< orphan*/  REG_HISRE ; 
 int /*<<< orphan*/  REG_HSISR ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u32 tmp = FUNC1(rtlpriv, REG_HISR);

	FUNC2(rtlpriv, REG_HISR, tmp);

	tmp = FUNC1(rtlpriv, REG_HISRE);
	FUNC2(rtlpriv, REG_HISRE, tmp);

	tmp = FUNC1(rtlpriv, REG_HSISR);
	FUNC2(rtlpriv, REG_HSISR, tmp);
}