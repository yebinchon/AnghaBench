#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  bWiFiIsHighPriTask; } ;
struct TYPE_13__ {scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bScoExist; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* fBtcSet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_WIFI_AP_MODE_ENABLE ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  BTC_SET_BL_BT_TRAFFIC_BUSY ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_7__* pCoexSta ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC7(PBTC_COEXIST pBtCoexist)
{
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
	bool bWifiConnected = false;
	bool bApEnable = false;
	bool bWifiBusy = false;
	bool bBtBusy = false;

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);
	pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_TRAFFIC_BUSY, &bBtBusy);

	if (!bWifiConnected && !pCoexSta->bWiFiIsHighPriTask) {
		FUNC1(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
		FUNC2(pBtCoexist, NORMAL_EXEC, false, 8);

		FUNC0(pBtCoexist, NORMAL_EXEC, 0);
	} else if (
		pBtLinkInfo->bScoExist ||
		pBtLinkInfo->bHidExist ||
		pBtLinkInfo->bA2dpExist
	) {
		/*  SCO/HID/A2DP busy */
		FUNC1(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
		FUNC2(pBtCoexist, NORMAL_EXEC, true, 32);

		FUNC0(pBtCoexist, NORMAL_EXEC, 4);
	} else if (pBtLinkInfo->bPanExist || bWifiBusy) {
		FUNC1(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
		FUNC2(pBtCoexist, NORMAL_EXEC, true, 20);

		FUNC0(pBtCoexist, NORMAL_EXEC, 4);
	} else {
		FUNC1(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
		FUNC2(pBtCoexist, NORMAL_EXEC, false, 8);

		FUNC0(pBtCoexist, NORMAL_EXEC, 7);
	}
}