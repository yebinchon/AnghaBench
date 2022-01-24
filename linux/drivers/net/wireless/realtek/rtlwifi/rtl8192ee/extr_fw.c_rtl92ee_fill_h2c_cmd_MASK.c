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
typedef  int /*<<< orphan*/  u32 ;
struct rtl_hal {int /*<<< orphan*/  fw_ready; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw,
			  u8 element_id, u32 cmd_len, u8 *cmdbuffer)
{
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	u32 tmp_cmdbuf[2];

	if (!rtlhal->fw_ready) {
		FUNC0(true,
			  "rtl8192ee: error H2C cmd because of Fw download fail!!!\n");
		return;
	}

	FUNC3(tmp_cmdbuf, 0, 8);
	FUNC2(tmp_cmdbuf, cmdbuffer, cmd_len);
	FUNC1(hw, element_id, cmd_len, (u8 *)&tmp_cmdbuf);
}