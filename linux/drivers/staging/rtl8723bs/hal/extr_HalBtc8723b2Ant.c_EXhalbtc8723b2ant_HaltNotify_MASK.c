#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* fBtcSetBtReg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BT_REG_RF ; 
 int /*<<< orphan*/  BTC_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  INTF_NOTIFY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(PBTC_COEXIST pBtCoexist)
{
	FUNC0(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));

	FUNC3(pBtCoexist);
	pBtCoexist->fBtcSetBtReg(pBtCoexist, BTC_BT_REG_RF, 0x3c, 0x15); /* BT goto standby while GNT_BT 1-->0 */
	FUNC2(pBtCoexist, FORCE_EXEC, true);

	FUNC1(pBtCoexist, BTC_MEDIA_DISCONNECT);
}