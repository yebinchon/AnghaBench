#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_17__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  (* fBtcSetRfReg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (int) ; 
 int BTC_RSSI_STATE_HIGH ; 
 int BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 int FUNC10 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC16(PBTC_COEXIST pBtCoexist)
{
	u8 wifiRssiState, wifiRssiState1, btRssiState;
	u32 wifiBw;
	u8 apNum = 0;

	wifiRssiState = FUNC10(pBtCoexist, 0, 2, 15, 0);
	wifiRssiState1 = FUNC10(pBtCoexist, 1, 2, 40, 0);
	btRssiState = FUNC1(2, 29, 0);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_AP_NUM, &apNum);

	/*  define the office environment */
	if (apNum >= 10 && FUNC0(wifiRssiState1)) {
		/* DbgPrint(" AP#>10(%d)\n", apNum); */
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
		FUNC5(pBtCoexist, NORMAL_EXEC, false, false, 0x8);
		FUNC4(pBtCoexist, NORMAL_EXEC, 6);
		FUNC3(pBtCoexist, NORMAL_EXEC, 0);
		FUNC2(pBtCoexist, NORMAL_EXEC, 0);
		FUNC6(pBtCoexist, NORMAL_EXEC, false, 1);

		/*  sw mechanism */
		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
		if (BTC_WIFI_BW_HT40 == wifiBw) {
			FUNC7(pBtCoexist, true, false, false, false);
			FUNC8(pBtCoexist, true, false, true, 0x18);
		} else {
			FUNC7(pBtCoexist, false, false, false, false);
			FUNC8(pBtCoexist, true, false, true, 0x18);
		}
		return;
	}

	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
	FUNC5(pBtCoexist, NORMAL_EXEC, false, false, 0x8);

	FUNC4(pBtCoexist, NORMAL_EXEC, 6);

	if (FUNC0(btRssiState))
		FUNC3(pBtCoexist, NORMAL_EXEC, 2);
	else
		FUNC3(pBtCoexist, NORMAL_EXEC, 0);

	FUNC2(pBtCoexist, NORMAL_EXEC, 7);

	if (
		(btRssiState == BTC_RSSI_STATE_HIGH) ||
		(btRssiState == BTC_RSSI_STATE_STAY_HIGH)
	)
		FUNC9(pBtCoexist, false, false, 1);
	else
		FUNC9(pBtCoexist, false, true, 1);

	/*  sw mechanism */
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
	if (BTC_WIFI_BW_HT40 == wifiBw) {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, true, false, false, false);
			FUNC8(pBtCoexist, true, false, false, 0x18);
		} else {
			FUNC7(pBtCoexist, true, false, false, false);
			FUNC8(pBtCoexist, false, false, false, 0x18);
		}
	} else {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, false, false, false, false);
			FUNC8(pBtCoexist, true, false, false, 0x18);
		} else {
			FUNC7(pBtCoexist, false, false, false, false);
			FUNC8(pBtCoexist, false, false, false, 0x18);
		}
	}
}