#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int bUnderIps; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 scalar_t__ BTC_IPS_ENTER ; 
 scalar_t__ BTC_IPS_LEAVE ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pCoexSta ; 

void FUNC7(PBTC_COEXIST pBtCoexist, u8 type)
{
	if (BTC_IPS_ENTER == type) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n"));
		pCoexSta->bUnderIps = true;
		FUNC6(pBtCoexist);
		FUNC2(pBtCoexist, FORCE_EXEC, true);
		FUNC1(pBtCoexist);
	} else if (BTC_IPS_LEAVE == type) {
		FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS LEAVE notify\n"));
		pCoexSta->bUnderIps = false;
		FUNC4(pBtCoexist, false);
		FUNC3(pBtCoexist);
		FUNC5(pBtCoexist);
	}
}