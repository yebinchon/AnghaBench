#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CAM_CONTENT_COUNT ; 
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 size_t RWCAM ; 
 size_t WCAMI ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct ieee80211_hw *hw,
			     u8 *mac_addr, u32 ul_key_id)
{
	u32 ul_command;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC1(rtlpriv, COMP_SEC, DBG_DMESG, "key_idx:%d\n", ul_key_id);

	ul_command = ul_key_id * CAM_CONTENT_COUNT;
	ul_command = ul_command | FUNC0(31) | FUNC0(16);

	FUNC3(rtlpriv, rtlpriv->cfg->maps[WCAMI], 0);
	FUNC3(rtlpriv, rtlpriv->cfg->maps[RWCAM], ul_command);

	FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
		 "rtl_cam_delete_one_entry(): WRITE A4: %x\n", 0);
	FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
		 "rtl_cam_delete_one_entry(): WRITE A0: %x\n", ul_command);

	return 0;

}