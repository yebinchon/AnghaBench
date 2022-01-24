#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt_connect_notify; } ;
struct btc_coexist {TYPE_2__ board_info; int /*<<< orphan*/  adapter; int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ manual_control; TYPE_1__ statistics; } ;

/* Variables and functions */
 scalar_t__ BTC_ASSOCIATE_FINISH ; 
 scalar_t__ BTC_ASSOCIATE_START ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC12(struct btc_coexist *btcoexist, u8 action)
{
	u8 asso_type;
	bool wifi_under_5g;

	if (!FUNC8(btcoexist))
		return;
	btcoexist->statistics.cnt_connect_notify++;
	if (btcoexist->manual_control)
		return;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);

	if (action)
		asso_type = BTC_ASSOCIATE_START;
	else
		asso_type = BTC_ASSOCIATE_FINISH;

	FUNC9(btcoexist);

	if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC7(btcoexist, asso_type);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC6(btcoexist, asso_type);
	} else if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC5(btcoexist, asso_type);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC4(btcoexist, asso_type);
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC3(btcoexist, asso_type);
	}

	FUNC10(btcoexist);
}