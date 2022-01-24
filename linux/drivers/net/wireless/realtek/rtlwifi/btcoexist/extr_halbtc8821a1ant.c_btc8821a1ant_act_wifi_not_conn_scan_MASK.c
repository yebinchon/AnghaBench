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
struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_BUSY ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_SCO_BUSY ; 
 int /*<<< orphan*/  BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* coex_dm ; 

__attribute__((used)) static void FUNC4(struct btc_coexist *btcoexist)
{
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

	FUNC2(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

	/* tdma and coex table */
	if (coex_dm->bt_status == BT_8821A_1ANT_BT_STATUS_ACL_BUSY) {
		if (bt_link_info->a2dp_exist) {
			FUNC3(btcoexist, NORMAL_EXEC, true, 14);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 1);
		} else if (bt_link_info->a2dp_exist &&
			   bt_link_info->pan_exist) {
			FUNC3(btcoexist, NORMAL_EXEC, true, 22);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 4);
		} else {
			FUNC3(btcoexist, NORMAL_EXEC, true, 20);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 4);
		}
	} else if ((coex_dm->bt_status == BT_8821A_1ANT_BT_STATUS_SCO_BUSY) ||
		   (BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ==
		    coex_dm->bt_status)) {
		FUNC0(btcoexist,
				BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN);
	} else {
		FUNC3(btcoexist, NORMAL_EXEC, false, 8);
		FUNC1(btcoexist, NORMAL_EXEC, 2);
	}
}