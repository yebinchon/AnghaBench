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
struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static
void FUNC3(
					struct btc_coexist *btcoexist)
{
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

	FUNC1(btcoexist, BTC_PS_WIFI_NATIVE, 0x0,
				      0x0);

	/* tdma and coex table */
	if ((bt_link_info->sco_exist) || (bt_link_info->hid_exist)) {
		FUNC2(btcoexist, NORMAL_EXEC, true, 14);
		FUNC0(btcoexist, NORMAL_EXEC, 1);
	} else if ((bt_link_info->a2dp_exist) || (bt_link_info->pan_exist)) {
		FUNC2(btcoexist, NORMAL_EXEC, true, 20);
		FUNC0(btcoexist, NORMAL_EXEC, 4);
	} else {
		FUNC2(btcoexist, NORMAL_EXEC, false, 8);
		FUNC0(btcoexist, NORMAL_EXEC, 2);
	}
}