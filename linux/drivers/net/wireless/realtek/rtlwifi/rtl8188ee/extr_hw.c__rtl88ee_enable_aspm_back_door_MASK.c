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
typedef  int u32 ;
struct rtl_ps_ctl {scalar_t__ support_backdoor; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC2 (struct rtl_priv*) ; 
 scalar_t__ FUNC3 (struct rtl_priv*,int) ; 
 int FUNC4 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_ps_ctl *ppsc = FUNC2(FUNC1(hw));
	u8 tmp1byte = 0;
	u32 tmp4byte = 0, count = 0;

	FUNC7(rtlpriv, 0x354, 0x8104);
	FUNC7(rtlpriv, 0x358, 0x24);

	FUNC7(rtlpriv, 0x350, 0x70c);
	FUNC5(rtlpriv, 0x352, 0x2);
	tmp1byte = FUNC3(rtlpriv, 0x352);
	count = 0;
	while (tmp1byte && count < 20) {
		FUNC8(10);
		tmp1byte = FUNC3(rtlpriv, 0x352);
		count++;
	}
	if (0 == tmp1byte) {
		tmp4byte = FUNC4(rtlpriv, 0x34c);
		FUNC6(rtlpriv, 0x348, tmp4byte|FUNC0(31));
		FUNC7(rtlpriv, 0x350, 0xf70c);
		FUNC5(rtlpriv, 0x352, 0x1);
	}

	tmp1byte = FUNC3(rtlpriv, 0x352);
	count = 0;
	while (tmp1byte && count < 20) {
		FUNC8(10);
		tmp1byte = FUNC3(rtlpriv, 0x352);
		count++;
	}

	FUNC7(rtlpriv, 0x350, 0x718);
	FUNC5(rtlpriv, 0x352, 0x2);
	tmp1byte = FUNC3(rtlpriv, 0x352);
	count = 0;
	while (tmp1byte && count < 20) {
		FUNC8(10);
		tmp1byte = FUNC3(rtlpriv, 0x352);
		count++;
	}

	if (ppsc->support_backdoor || (0 == tmp1byte)) {
		tmp4byte = FUNC4(rtlpriv, 0x34c);
		FUNC6(rtlpriv, 0x348, tmp4byte|FUNC0(11)|FUNC0(12));
		FUNC7(rtlpriv, 0x350, 0xf718);
		FUNC5(rtlpriv, 0x352, 0x1);
	}

	tmp1byte = FUNC3(rtlpriv, 0x352);
	count = 0;
	while (tmp1byte && count < 20) {
		FUNC8(10);
		tmp1byte = FUNC3(rtlpriv, 0x352);
		count++;
	}
}