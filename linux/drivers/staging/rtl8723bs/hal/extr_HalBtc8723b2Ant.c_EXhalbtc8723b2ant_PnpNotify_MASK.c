#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ BTC_WIFI_PNP_SLEEP ; 
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(PBTC_COEXIST pBtCoexist, u8 pnpState)
{
	FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));

	if (BTC_WIFI_PNP_SLEEP == pnpState) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));
	} else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
		FUNC2(pBtCoexist, false);
		FUNC1(pBtCoexist);
		FUNC3(pBtCoexist);
	}
}