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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8192c { ____Placeholder_version_8192c } version_8192c ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int FW_8192C_PAGE_SIZE ; 
 scalar_t__ HARDWARE_TYPE_RTL8192CE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ *,int) ; 
 struct rtl_hal* FUNC6 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
			     enum version_8192c version, u8 *buffer, u32 size)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_hal *rtlhal = FUNC6(FUNC7(hw));
	bool is_version_b;
	u8 *bufferptr = (u8 *)buffer;

	FUNC1(rtlpriv, COMP_FW, DBG_TRACE, "FW size is %d bytes,\n", size);
	is_version_b = FUNC0(version);
	if (is_version_b) {
		u32 pagenums, remainsize;
		u32 page, offset;

		if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CE)
			FUNC3(bufferptr, &size);

		pagenums = size / FW_8192C_PAGE_SIZE;
		remainsize = size % FW_8192C_PAGE_SIZE;

		if (pagenums > 4)
			FUNC2("Page numbers should not greater then 4\n");

		for (page = 0; page < pagenums; page++) {
			offset = page * FW_8192C_PAGE_SIZE;
			FUNC5(hw, page, (bufferptr + offset),
					  FW_8192C_PAGE_SIZE);
		}

		if (remainsize) {
			offset = pagenums * FW_8192C_PAGE_SIZE;
			page = pagenums;
			FUNC5(hw, page, (bufferptr + offset),
					  remainsize);
		}
	} else {
		FUNC4(hw, buffer, size);
	}
}