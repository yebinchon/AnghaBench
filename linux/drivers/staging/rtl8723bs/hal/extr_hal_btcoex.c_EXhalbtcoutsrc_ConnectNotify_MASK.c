#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int /*<<< orphan*/  cntConnectNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef  TYPE_3__* PBTC_COEXIST ;

/* Variables and functions */
 scalar_t__ BTC_ASSOCIATE_FINISH ; 
 scalar_t__ BTC_ASSOCIATE_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

void FUNC3(PBTC_COEXIST pBtCoexist, u8 action)
{
	u8 assoType;

	if (!FUNC2(pBtCoexist))
		return;
	pBtCoexist->statistics.cntConnectNotify++;
	if (pBtCoexist->bManualControl)
		return;

	if (action)
		assoType = BTC_ASSOCIATE_START;
	else
		assoType = BTC_ASSOCIATE_FINISH;

	/*  All notify is called in cmd thread, don't need to leave low power again */
/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */

	if (pBtCoexist->boardInfo.btdmAntNum == 2)
		FUNC1(pBtCoexist, assoType);
	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
		FUNC0(pBtCoexist, assoType);

/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
}