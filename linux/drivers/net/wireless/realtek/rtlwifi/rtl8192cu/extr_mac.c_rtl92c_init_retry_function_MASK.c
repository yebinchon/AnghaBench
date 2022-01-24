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
 int EN_AMPDU_RTY_NEW ; 
 int /*<<< orphan*/  REG_ACKTO ; 
 int /*<<< orphan*/  REG_FWHW_TXQ_CTRL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	u8	value8;
	struct rtl_priv *rtlpriv = FUNC0(hw);

	value8 = FUNC1(rtlpriv, REG_FWHW_TXQ_CTRL);
	value8 |= EN_AMPDU_RTY_NEW;
	FUNC2(rtlpriv, REG_FWHW_TXQ_CTRL, value8);
	/* Set ACK timeout */
	FUNC2(rtlpriv, REG_ACKTO, 0x40);
}