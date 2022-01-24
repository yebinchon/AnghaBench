#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bStopCoexDm; } ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 int /*<<< orphan*/  BTC_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(PBTC_COEXIST pBtCoexist)
{
	FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));

	FUNC3(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
	FUNC4(pBtCoexist, FORCE_EXEC, false, 0);
	FUNC5(pBtCoexist, BTC_ANT_PATH_BT, false, true);

	FUNC2(pBtCoexist, FORCE_EXEC, true);

	FUNC1(pBtCoexist, BTC_MEDIA_DISCONNECT);

	pBtCoexist->bStopCoexDm = true;
}