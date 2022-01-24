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
 scalar_t__ RQPN ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	FUNC2(rtlpriv, RQPN, 0xffffffff);
	FUNC2(rtlpriv, RQPN + 4, 0xffffffff);
	FUNC1(rtlpriv, RQPN + 8, 0xff);
	FUNC1(rtlpriv, RQPN + 0xB, 0x80);
}