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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ REG_BCN_MAX_ERR ; 
 scalar_t__ REG_FWHW_TXQ_CTRL ; 
 scalar_t__ REG_TBTT_PROHIBIT ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 tmp1byte;

	tmp1byte = FUNC2(rtlpriv, REG_FWHW_TXQ_CTRL + 2);
	FUNC3(rtlpriv, REG_FWHW_TXQ_CTRL + 2, tmp1byte | FUNC0(6));
	FUNC3(rtlpriv, REG_BCN_MAX_ERR, 0x0a);
	FUNC3(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);
	tmp1byte = FUNC2(rtlpriv, REG_TBTT_PROHIBIT + 2);
	tmp1byte |= FUNC0(0);
	FUNC3(rtlpriv, REG_TBTT_PROHIBIT + 2, tmp1byte);
}