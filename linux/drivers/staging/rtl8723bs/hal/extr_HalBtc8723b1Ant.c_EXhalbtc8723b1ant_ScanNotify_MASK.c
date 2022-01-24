#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_24__ {scalar_t__ bBtDisabled; } ;
struct TYPE_25__ {int (* fBtcRead4Byte ) (TYPE_2__*,int) ;scalar_t__ (* fBtcRead1Byte ) (TYPE_2__*,int) ;int /*<<< orphan*/  (* fBtcGet ) (TYPE_2__*,int /*<<< orphan*/ ,int*) ;TYPE_1__ btInfo; scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
struct TYPE_23__ {int bWiFiIsHighPriTask; int nScanAPNum; scalar_t__ bC2hBtInquiryPage; } ;
typedef  TYPE_2__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ BTC_SCAN_FINISH ; 
 scalar_t__ BTC_SCAN_START ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_10__* pCoexSta ; 
 int FUNC12 (TYPE_2__*,int) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 

void FUNC19(PBTC_COEXIST pBtCoexist, u8 type)
{
	bool bWifiConnected = false, bBtHsOn = false;
	u32 wifiLinkStatus = 0;
	u32 numOfWifiLink = 0;
	bool bBtCtrlAggBufSize = false;
	u8 aggBufSize = 5;

	u8 u1Tmpa, u1Tmpb;
	u32 u4Tmp;

	if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
		return;

	if (BTC_SCAN_START == type) {
		pCoexSta->bWiFiIsHighPriTask = true;
		FUNC0(
			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n")
		);

		FUNC10(pBtCoexist, FORCE_EXEC, false, 8);  /* Force antenna setup for no scan result issue */
		u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x948);
		u1Tmpa = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x765);
		u1Tmpb = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x67);


		FUNC0(
			BTC_MSG_INTERFACE,
			INTF_NOTIFY,
			(
				"[BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x67 = 0x%x\n",
				u4Tmp,
				u1Tmpa,
				u1Tmpb
			)
		);
	} else {
		pCoexSta->bWiFiIsHighPriTask = false;
		FUNC0(
			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n")
		);

		pBtCoexist->fBtcGet(
			pBtCoexist, BTC_GET_U1_AP_NUM, &pCoexSta->nScanAPNum
		);
	}

	if (pBtCoexist->btInfo.bBtDisabled)
		return;

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);

	FUNC11(pBtCoexist);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus);
	numOfWifiLink = wifiLinkStatus>>16;

	if (numOfWifiLink >= 2) {
		FUNC9(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC8(
			pBtCoexist, NORMAL_EXEC, false, bBtCtrlAggBufSize, aggBufSize
		);
		FUNC5(pBtCoexist);
		return;
	}

	if (pCoexSta->bC2hBtInquiryPage) {
		FUNC1(pBtCoexist);
		return;
	} else if (bBtHsOn) {
		FUNC2(pBtCoexist);
		return;
	}

	if (BTC_SCAN_START == type) {
		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n")); */
		if (!bWifiConnected)	/*  non-connected scan */
			FUNC7(pBtCoexist);
		else	/*  wifi is connected */
			FUNC4(pBtCoexist);
	} else if (BTC_SCAN_FINISH == type) {
		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n")); */
		if (!bWifiConnected)	/*  non-connected scan */
			FUNC6(pBtCoexist);
		else
			FUNC3(pBtCoexist);
	}
}