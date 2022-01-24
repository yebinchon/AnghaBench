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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 long POLLING_LLT_THRESHOLD ; 
 int /*<<< orphan*/  REG_LLT_INIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ _LLT_NO_ACTIVE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  _LLT_WRITE_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_hw *hw, u32 address, u32 data)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	bool status = true;
	long count = 0;
	u32 value = FUNC0(address) | FUNC1(data) |
		    FUNC2(_LLT_WRITE_ACCESS);

	FUNC7(rtlpriv, REG_LLT_INIT, value);

	do {
		value = FUNC6(rtlpriv, REG_LLT_INIT);
		if (_LLT_NO_ACTIVE == FUNC3(value))
			break;

		if (count > POLLING_LLT_THRESHOLD) {
			FUNC4("Failed to polling write LLT done at address %d!\n",
			       address);
			status = false;
			break;
		}
	} while (++count);

	return status;
}