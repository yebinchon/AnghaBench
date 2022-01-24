#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_13__ {int bAutoTdmaAdjust; } ;
struct TYPE_12__ {int lowPriorityRx; } ;
struct TYPE_11__ {int bSlaveRole; scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bPanOnly; scalar_t__ bA2dpOnly; scalar_t__ bHidOnly; } ;
struct TYPE_10__ {TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 TYPE_4__* pCoexDm ; 
 TYPE_3__* pCoexSta ; 

__attribute__((used)) static void FUNC5(
	PBTC_COEXIST pBtCoexist, u8 wifiStatus
)
{
	u8 btRssiState;

	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
	btRssiState = FUNC1(2, 28, 0);

	if ((pCoexSta->lowPriorityRx >= 1000) && (pCoexSta->lowPriorityRx != 65535))
		pBtLinkInfo->bSlaveRole = true;
	else
		pBtLinkInfo->bSlaveRole = false;

	if (pBtLinkInfo->bHidOnly) { /* HID */
		FUNC0(pBtCoexist, wifiStatus);
		pCoexDm->bAutoTdmaAdjust = false;
		return;
	} else if (pBtLinkInfo->bA2dpOnly) { /* A2DP */
		if (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE == wifiStatus) {
			FUNC3(pBtCoexist, NORMAL_EXEC, true, 32);
			FUNC2(pBtCoexist, NORMAL_EXEC, 4);
			pCoexDm->bAutoTdmaAdjust = false;
		} else {
			FUNC4(pBtCoexist, wifiStatus);
			FUNC2(pBtCoexist, NORMAL_EXEC, 4);
			pCoexDm->bAutoTdmaAdjust = true;
		}
	} else if (pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist) { /* HID+A2DP */
		FUNC3(pBtCoexist, NORMAL_EXEC, true, 14);
		pCoexDm->bAutoTdmaAdjust = false;

		FUNC2(pBtCoexist, NORMAL_EXEC, 4);
	} else if (
		pBtLinkInfo->bPanOnly ||
		(pBtLinkInfo->bHidExist && pBtLinkInfo->bPanExist)
	) { /* PAN(OPP, FTP), HID+PAN(OPP, FTP) */
		FUNC3(pBtCoexist, NORMAL_EXEC, true, 3);
		FUNC2(pBtCoexist, NORMAL_EXEC, 4);
		pCoexDm->bAutoTdmaAdjust = false;
	} else if (
		(pBtLinkInfo->bA2dpExist && pBtLinkInfo->bPanExist) ||
		(pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist && pBtLinkInfo->bPanExist)
	) { /* A2DP+PAN(OPP, FTP), HID+A2DP+PAN(OPP, FTP) */
		FUNC3(pBtCoexist, NORMAL_EXEC, true, 13);
		FUNC2(pBtCoexist, NORMAL_EXEC, 4);
		pCoexDm->bAutoTdmaAdjust = false;
	} else {
		/* BT no-profile busy (0x9) */
		FUNC3(pBtCoexist, NORMAL_EXEC, true, 32);
		FUNC2(pBtCoexist, NORMAL_EXEC, 4);
		pCoexDm->bAutoTdmaAdjust = false;
	}
}