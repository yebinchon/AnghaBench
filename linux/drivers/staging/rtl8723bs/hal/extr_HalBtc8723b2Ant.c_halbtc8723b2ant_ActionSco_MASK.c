#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_13__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  (* fBtcSetRfReg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC12(PBTC_COEXIST pBtCoexist)
{
	u8 wifiRssiState, btRssiState;
	u32 wifiBw;

	wifiRssiState = FUNC9(pBtCoexist, 0, 2, 15, 0);
	btRssiState = FUNC1(2, 29, 0);

	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC5(pBtCoexist, NORMAL_EXEC, false, false, 0x8);

	FUNC4(pBtCoexist, NORMAL_EXEC, 4);

	if (FUNC0(btRssiState))
		FUNC3(pBtCoexist, NORMAL_EXEC, 2);
	else
		FUNC3(pBtCoexist, NORMAL_EXEC, 0);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);

	if (BTC_WIFI_BW_LEGACY == wifiBw) /* for SCO quality at 11b/g mode */
		FUNC2(pBtCoexist, NORMAL_EXEC, 2);
	else  /* for SCO quality & wifi performance balance at 11n mode */
		FUNC2(pBtCoexist, NORMAL_EXEC, 8);

	FUNC6(pBtCoexist, NORMAL_EXEC, false, 0); /* for voice quality */

	/*  sw mechanism */
	if (BTC_WIFI_BW_HT40 == wifiBw) {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, true, true, false, false);
			FUNC8(pBtCoexist, true, false, true, 0x4);
		} else {
			FUNC7(pBtCoexist, true, true, false, false);
			FUNC8(pBtCoexist, false, false, true, 0x4);
		}
	} else {
		if (
			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
		) {
			FUNC7(pBtCoexist, false, true, false, false);
			FUNC8(pBtCoexist, true, false, true, 0x4);
		} else {
			FUNC7(pBtCoexist, false, true, false, false);
			FUNC8(pBtCoexist, false, false, true, 0x4);
		}
	}
}