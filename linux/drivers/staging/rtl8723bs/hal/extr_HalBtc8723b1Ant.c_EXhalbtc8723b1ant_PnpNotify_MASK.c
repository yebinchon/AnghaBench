#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_10__ {int bStopCoexDm; } ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 scalar_t__ BTC_WIFI_PNP_SLEEP ; 
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

void FUNC8(PBTC_COEXIST pBtCoexist, u8 pnpState)
{
	FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));

	if (BTC_WIFI_PNP_SLEEP == pnpState) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));

		FUNC4(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
		FUNC5(pBtCoexist, NORMAL_EXEC, false, 0);
		FUNC1(pBtCoexist, NORMAL_EXEC, 2);
		FUNC7(pBtCoexist, BTC_ANT_PATH_BT, false, true);

		pBtCoexist->bStopCoexDm = true;
	} else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
		pBtCoexist->bStopCoexDm = false;
		FUNC3(pBtCoexist, false, false);
		FUNC2(pBtCoexist);
		FUNC6(pBtCoexist);
	}
}