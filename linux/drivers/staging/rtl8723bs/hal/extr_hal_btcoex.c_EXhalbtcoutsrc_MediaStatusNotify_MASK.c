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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int /*<<< orphan*/  cntMediaStatusNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef  scalar_t__ RT_MEDIA_STATUS ;
typedef  TYPE_3__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_MEDIA_CONNECT ; 
 int /*<<< orphan*/  BTC_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ RT_MEDIA_CONNECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

void FUNC3(PBTC_COEXIST pBtCoexist, RT_MEDIA_STATUS mediaStatus)
{
	u8 mStatus;

	if (!FUNC2(pBtCoexist))
		return;

	pBtCoexist->statistics.cntMediaStatusNotify++;
	if (pBtCoexist->bManualControl)
		return;

	if (RT_MEDIA_CONNECT == mediaStatus)
		mStatus = BTC_MEDIA_CONNECT;
	else
		mStatus = BTC_MEDIA_DISCONNECT;

	/*  All notify is called in cmd thread, don't need to leave low power again */
/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */

	if (pBtCoexist->boardInfo.btdmAntNum == 2)
		FUNC1(pBtCoexist, mStatus);
	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
		FUNC0(pBtCoexist, mStatus);

/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
}