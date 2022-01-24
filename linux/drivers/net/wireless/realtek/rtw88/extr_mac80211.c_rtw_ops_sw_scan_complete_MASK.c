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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_vif {int /*<<< orphan*/  mac_addr; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_SCAN_FINISH ; 
 int /*<<< orphan*/  PORT_SET_MAC_ADDR ; 
 int /*<<< orphan*/  RTW_FLAG_DIG_DISABLE ; 
 int /*<<< orphan*/  RTW_FLAG_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,struct rtw_vif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct rtw_dev *rtwdev = hw->priv;
	struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
	u32 config = 0;

	FUNC1(&rtwdev->mutex);

	FUNC4(rtwdev, RTW_FLAG_SCANNING);
	FUNC4(rtwdev, RTW_FLAG_DIG_DISABLE);

	FUNC0(rtwvif->mac_addr, vif->addr);
	config |= PORT_SET_MAC_ADDR;
	FUNC5(rtwdev, rtwvif, config);

	FUNC3(rtwdev, COEX_SCAN_FINISH);

	FUNC2(&rtwdev->mutex);
}