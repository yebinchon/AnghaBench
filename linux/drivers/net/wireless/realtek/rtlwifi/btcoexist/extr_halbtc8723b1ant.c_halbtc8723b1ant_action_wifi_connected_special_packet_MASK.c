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
struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {int num_of_profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_PTA ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(
						struct btc_coexist *btcoexist)
{
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	bool wifi_busy = false;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

	/* no special packet process for both WiFi and BT very busy */
	if ((wifi_busy) &&
	    ((bt_link_info->pan_exist) || (coex_sta->num_of_profile >= 2)))
		return;

	FUNC1(btcoexist, BTC_PS_WIFI_NATIVE,
					 0x0, 0x0);

	/* tdma and coex table */
	if ((bt_link_info->sco_exist) || (bt_link_info->hid_exist)) {
		FUNC2(btcoexist, NORMAL_EXEC, true, 32);
		FUNC0(btcoexist, NORMAL_EXEC, 5);
	} else if (bt_link_info->a2dp_exist) {
		FUNC2(btcoexist, NORMAL_EXEC, true, 32);
		FUNC0(btcoexist, NORMAL_EXEC, 4);
	} else if (bt_link_info->pan_exist) {
		FUNC2(btcoexist, NORMAL_EXEC, true, 20);
		FUNC0(btcoexist, NORMAL_EXEC, 4);
	} else {
		FUNC2(btcoexist, NORMAL_EXEC, false, 8);
		FUNC3(btcoexist, BTC_ANT_PATH_PTA,
					     NORMAL_EXEC, false, false);
		FUNC0(btcoexist, NORMAL_EXEC, 2);
	}
}