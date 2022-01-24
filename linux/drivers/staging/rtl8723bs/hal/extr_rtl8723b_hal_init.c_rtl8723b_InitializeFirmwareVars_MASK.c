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
struct hal_com_data {scalar_t__ LastHMEBoxNum; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  REG_HMETFR ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct adapter *padapter)
{
	struct hal_com_data *pHalData = FUNC0(padapter);

	/*  Init Fw LPS related. */
	FUNC1(padapter)->bFwCurrentInPSMode = false;

	/* Init H2C cmd. */
	FUNC2(padapter, REG_HMETFR, 0x0f);

	/*  Init H2C counter. by tynli. 2009.12.09. */
	pHalData->LastHMEBoxNum = 0;
/* pHalData->H2CQueueHead = 0; */
/* pHalData->H2CQueueTail = 0; */
/* pHalData->H2CStopInsertQueue = false; */
}