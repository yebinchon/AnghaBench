#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ btStatus; } ;
struct TYPE_10__ {scalar_t__ bPanExist; scalar_t__ bA2dpExist; } ;
struct TYPE_9__ {TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ; 
 int /*<<< orphan*/  BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* pCoexDm ; 

__attribute__((used)) static void FUNC4(
	PBTC_COEXIST pBtCoexist
)
{
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;

	FUNC2(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

	/*  tdma and coex table */
	if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
		if (pBtLinkInfo->bA2dpExist) {
			FUNC3(pBtCoexist, NORMAL_EXEC, true, 32);
			FUNC1(pBtCoexist, NORMAL_EXEC, 4);
		} else if (pBtLinkInfo->bA2dpExist && pBtLinkInfo->bPanExist) {
			FUNC3(pBtCoexist, NORMAL_EXEC, true, 22);
			FUNC1(pBtCoexist, NORMAL_EXEC, 4);
		} else {
			FUNC3(pBtCoexist, NORMAL_EXEC, true, 20);
			FUNC1(pBtCoexist, NORMAL_EXEC, 4);
		}
	} else if (
		(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
		(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
	) {
		FUNC0(
			pBtCoexist, BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN
		);
	} else {
		/* Bryant Add */
		FUNC3(pBtCoexist, NORMAL_EXEC, false, 8);
		FUNC1(pBtCoexist, NORMAL_EXEC, 2);
	}
}