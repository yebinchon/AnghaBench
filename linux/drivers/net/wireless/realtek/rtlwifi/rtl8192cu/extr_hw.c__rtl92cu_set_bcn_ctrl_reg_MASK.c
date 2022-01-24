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
typedef  scalar_t__ u8 ;
struct rtl_usb {scalar_t__ reg_bcn_ctrl_val; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				      u8 set_bits, u8 clear_bits)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	struct rtl_usb *rtlusb = FUNC1(FUNC2(hw));

	rtlusb->reg_bcn_ctrl_val |= set_bits;
	rtlusb->reg_bcn_ctrl_val &= ~clear_bits;
	FUNC3(rtlpriv, REG_BCN_CTRL, (u8)rtlusb->reg_bcn_ctrl_val);
}