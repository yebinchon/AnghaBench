#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_14__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* fBtcSetRfReg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int BTC_RSSI_STATE_HIGH ; 
 int BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC14(PBTC_COEXIST pBtCoexist)
{
	u8 wifiRssiState, btRssiState;
	u32 wifiBw;
	u8 apNum = 0;

	wifiRssiState = FUNC10(pBtCoexist, 0, 2, 15, 0);
	/* btRssiState = halbtc8723b2ant_BtRssiState(2, 29, 0); */
	btRssiState = FUNC2(3, 29, 37);

	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC6(pBtCoexist, NORMAL_EXEC, false, true, 0x5);

	FUNC5(pBtCoexist, NORMAL_EXEC, 6);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
	if (BTC_WIFI_BW_LEGACY == wifiBw) {
		if (FUNC0(btRssiState))
			FUNC4(pBtCoexist, NORMAL_EXEC, 2);
		else if (FUNC1(btRssiState))
			FUNC4(pBtCoexist, NORMAL_EXEC, 2);
		else
			FUNC4(pBtCoexist, NORMAL_EXEC, 0);
	} else {
		/*  only 802.11N mode we have to dec bt power to 4 degree */
		if (FUNC0(btRssiState)) {
			pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_AP_NUM, &apNum);
			/*  need to check ap Number of Not */
			if (apNum < 10)
				FUNC4(pBtCoexist, NORMAL_EXEC, 4);
			else
				FUNC4(pBtCoexist, NORMAL_EXEC, 2);
		} else if (FUNC1(btRssiState))
			FUNC4(pBtCoexist, NORMAL_EXEC, 2);
		else
			FUNC4(pBtCoexist, NORMAL_EXEC, 0);
	}

	FUNC3(pBtCoexist, NORMAL_EXEC, 7);

	if (
		(btRssiState == BTC_RSSI_STATE_HIGH) ||
		(btRssiState == BTC_RSSI_STATE_STAY_HIGH)
	)
		FUNC9(pBtCoexist, true, false, 2);
	else
		FUNC9(pBtCoexist, true, true, 2);

	/*  sw mechanism */
	if (BTC_WIFI_BW_HT40 == wifiBw) {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, true, true, false, false);
			FUNC8(pBtCoexist, true, false, false, 0x18);
		} else {
			FUNC7(pBtCoexist, true, true, false, false);
			FUNC8(pBtCoexist, false, false, false, 0x18);
		}
	} else {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, false, true, false, false);
			FUNC8(pBtCoexist, true, false, false, 0x18);
		} else {
			FUNC7(pBtCoexist, false, true, false, false);
			FUNC8(pBtCoexist, false, false, false, 0x18);
		}
	}
}