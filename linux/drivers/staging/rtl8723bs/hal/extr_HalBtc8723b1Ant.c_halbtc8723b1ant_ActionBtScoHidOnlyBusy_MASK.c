#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ bScoExist; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(
	PBTC_COEXIST pBtCoexist, u8 wifiStatus
)
{
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
	bool bWifiConnected = false;

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);

	/*  tdma and coex table */

	if (pBtLinkInfo->bScoExist) {
		FUNC1(pBtCoexist, NORMAL_EXEC, true, 5);
		FUNC0(pBtCoexist, NORMAL_EXEC, 5);
	} else { /* HID */
		FUNC1(pBtCoexist, NORMAL_EXEC, true, 6);
		FUNC0(pBtCoexist, NORMAL_EXEC, 5);
	}
}