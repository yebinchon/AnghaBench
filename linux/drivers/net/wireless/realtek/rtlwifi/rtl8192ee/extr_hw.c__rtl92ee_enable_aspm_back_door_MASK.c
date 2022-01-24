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
 scalar_t__ REG_BACKDOOR_DBI_DATA ; 
 int /*<<< orphan*/  REG_BACKDOOR_DBI_RDATA ; 
 int /*<<< orphan*/  REG_BACKDOOR_DBI_WDATA ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC2 (struct rtl_priv*) ; 
 scalar_t__ FUNC3 (struct rtl_priv*,scalar_t__) ; 
 int FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_ps_ctl *ppsc = FUNC2(FUNC1(hw));
	u32 tmp32 = 0, count = 0;
	u8 tmp8 = 0;

	FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0x78);
	FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x2);
	tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
	count = 0;
	while (tmp8 && count < 20) {
		FUNC8(10);
		tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
		count++;
	}

	if (0 == tmp8) {
		tmp32 = FUNC4(rtlpriv, REG_BACKDOOR_DBI_RDATA);
		if ((tmp32 & 0xff00) != 0x2000) {
			tmp32 &= 0xffff00ff;
			FUNC6(rtlpriv, REG_BACKDOOR_DBI_WDATA,
					tmp32 | FUNC0(13));
			FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0xf078);
			FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x1);

			tmp8 = FUNC3(rtlpriv,
					     REG_BACKDOOR_DBI_DATA + 2);
			count = 0;
			while (tmp8 && count < 20) {
				FUNC8(10);
				tmp8 = FUNC3(rtlpriv,
						     REG_BACKDOOR_DBI_DATA + 2);
				count++;
			}
		}
	}

	FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0x70c);
	FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x2);
	tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
	count = 0;
	while (tmp8 && count < 20) {
		FUNC8(10);
		tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
		count++;
	}
	if (0 == tmp8) {
		tmp32 = FUNC4(rtlpriv, REG_BACKDOOR_DBI_RDATA);
		FUNC6(rtlpriv, REG_BACKDOOR_DBI_WDATA,
				tmp32 | FUNC0(31));
		FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0xf70c);
		FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x1);
	}

	tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
	count = 0;
	while (tmp8 && count < 20) {
		FUNC8(10);
		tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
		count++;
	}

	FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0x718);
	FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x2);
	tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
	count = 0;
	while (tmp8 && count < 20) {
		FUNC8(10);
		tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
		count++;
	}
	if (ppsc->support_backdoor || (0 == tmp8)) {
		tmp32 = FUNC4(rtlpriv, REG_BACKDOOR_DBI_RDATA);
		FUNC6(rtlpriv, REG_BACKDOOR_DBI_WDATA,
				tmp32 | FUNC0(11) | FUNC0(12));
		FUNC7(rtlpriv, REG_BACKDOOR_DBI_DATA, 0xf718);
		FUNC5(rtlpriv, REG_BACKDOOR_DBI_DATA + 2, 0x1);
	}
	tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
	count = 0;
	while (tmp8 && count < 20) {
		FUNC8(10);
		tmp8 = FUNC3(rtlpriv, REG_BACKDOOR_DBI_DATA + 2);
		count++;
	}
}