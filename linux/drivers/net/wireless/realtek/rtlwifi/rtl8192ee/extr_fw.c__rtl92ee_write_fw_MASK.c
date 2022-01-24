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
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8192e { ____Placeholder_version_8192e } version_8192e ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int FW_8192C_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ *,int) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
			      enum version_8192e version,
			      u8 *buffer, u32 size)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u8 *bufferptr = (u8 *)buffer;
	u32 pagenums, remainsize;
	u32 page, offset;

	FUNC0(rtlpriv, COMP_FW, DBG_LOUD , "FW size is %d bytes,\n", size);

	FUNC2(bufferptr, &size);

	pagenums = size / FW_8192C_PAGE_SIZE;
	remainsize = size % FW_8192C_PAGE_SIZE;

	if (pagenums > 8)
		FUNC1("Page numbers should not greater then 8\n");

	for (page = 0; page < pagenums; page++) {
		offset = page * FW_8192C_PAGE_SIZE;
		FUNC3(hw, page, (bufferptr + offset),
				  FW_8192C_PAGE_SIZE);
		FUNC5(2);
	}

	if (remainsize) {
		offset = pagenums * FW_8192C_PAGE_SIZE;
		page = pagenums;
		FUNC3(hw, page, (bufferptr + offset), remainsize);
	}
}