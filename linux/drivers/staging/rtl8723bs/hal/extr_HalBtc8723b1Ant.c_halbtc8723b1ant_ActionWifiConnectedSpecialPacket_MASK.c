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
struct TYPE_8__ {scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bScoExist; } ;
struct TYPE_7__ {TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(
	PBTC_COEXIST pBtCoexist
)
{
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;

	FUNC1(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

	/*  tdma and coex table */
	if (
		(pBtLinkInfo->bScoExist) ||
		(pBtLinkInfo->bHidExist) ||
		(pBtLinkInfo->bA2dpExist)
	) {
		FUNC2(pBtCoexist, NORMAL_EXEC, true, 32);
		FUNC0(pBtCoexist, NORMAL_EXEC, 4);
	} else if (pBtLinkInfo->bPanExist) {
		FUNC2(pBtCoexist, NORMAL_EXEC, true, 20);
		FUNC0(pBtCoexist, NORMAL_EXEC, 4);
	} else {
		FUNC2(pBtCoexist, NORMAL_EXEC, false, 8);
		FUNC0(pBtCoexist, NORMAL_EXEC, 2);
	}
}