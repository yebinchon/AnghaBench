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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_LOW ; 
 scalar_t__ BTC_RSSI_STATE_MEDIUM ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_LOW ; 
 scalar_t__ BTC_RSSI_STATE_STAY_MEDIUM ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC0 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC11(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, bt_rssi_state = BTC_RSSI_STATE_HIGH;
	u32 wifi_bw;

	wifi_rssi_state = FUNC9(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC0(btcoexist, 3, 34, 42);

	FUNC8(btcoexist, NORMAL_EXEC, 1);
	FUNC4(btcoexist, NORMAL_EXEC, false, false, 0x8);

	FUNC3(btcoexist, NORMAL_EXEC, 6);

	FUNC1(btcoexist, NORMAL_EXEC, 2);

	if ((bt_rssi_state == BTC_RSSI_STATE_LOW) ||
	    (bt_rssi_state == BTC_RSSI_STATE_STAY_LOW)) {
		FUNC2(btcoexist, NORMAL_EXEC, 0);
		FUNC5(btcoexist, NORMAL_EXEC, true, 5);
	} else if ((bt_rssi_state == BTC_RSSI_STATE_MEDIUM) ||
		   (bt_rssi_state == BTC_RSSI_STATE_STAY_MEDIUM)) {
		FUNC2(btcoexist, NORMAL_EXEC, 2);
		FUNC5(btcoexist, NORMAL_EXEC, true, 1);
	} else if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
		   (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
		FUNC2(btcoexist, NORMAL_EXEC, 4);
		FUNC5(btcoexist, NORMAL_EXEC, true, 1);
	}

	/* sw mechanism */
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
	if (BTC_WIFI_BW_HT40 == wifi_bw) {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC6(btcoexist, true, false,
						   false, false);
			FUNC7(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC6(btcoexist, true, false,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);
		}
	} else {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC6(btcoexist, false, false,
						   false, false);
			FUNC7(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC6(btcoexist, false, false,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);
		}
	}
}