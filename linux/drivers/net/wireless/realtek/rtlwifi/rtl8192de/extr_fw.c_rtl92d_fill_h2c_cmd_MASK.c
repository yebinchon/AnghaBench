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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw,
			 u8 element_id, u32 cmd_len, u8 *cmdbuffer)
{
	u32 tmp_cmdbuf[2];

	FUNC2(tmp_cmdbuf, 0, 8);
	FUNC1(tmp_cmdbuf, cmdbuffer, cmd_len);
	FUNC0(hw, element_id, cmd_len, (u8 *)&tmp_cmdbuf);
	return;
}