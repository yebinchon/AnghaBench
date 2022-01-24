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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int bCurDacSwingOn; scalar_t__ curDacSwingLvl; int bPreDacSwingOn; scalar_t__ preDacSwingLvl; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_SW ; 
 int /*<<< orphan*/  ALGO_TRACE_SW_DETAIL ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* pCoexDm ; 

__attribute__((used)) static void FUNC3(
	PBTC_COEXIST pBtCoexist,
	bool bForceExec,
	bool bDacSwingOn,
	u32 dacSwingLvl
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE_SW,
		(
			"[BTCoex], %s turn DacSwing =%s, dacSwingLvl = 0x%x\n",
			(bForceExec ? "force to" : ""),
			(bDacSwingOn ? "ON" : "OFF"),
			dacSwingLvl
		)
	);
	pCoexDm->bCurDacSwingOn = bDacSwingOn;
	pCoexDm->curDacSwingLvl = dacSwingLvl;

	if (!bForceExec) {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_SW_DETAIL,
			(
				"[BTCoex], bPreDacSwingOn =%d, preDacSwingLvl = 0x%x, bCurDacSwingOn =%d, curDacSwingLvl = 0x%x\n",
				pCoexDm->bPreDacSwingOn,
				pCoexDm->preDacSwingLvl,
				pCoexDm->bCurDacSwingOn,
				pCoexDm->curDacSwingLvl
			)
		);

		if ((pCoexDm->bPreDacSwingOn == pCoexDm->bCurDacSwingOn) &&
			(pCoexDm->preDacSwingLvl == pCoexDm->curDacSwingLvl))
			return;
	}
	FUNC2(30);
	FUNC1(pBtCoexist, bDacSwingOn, dacSwingLvl);

	pCoexDm->bPreDacSwingOn = pCoexDm->bCurDacSwingOn;
	pCoexDm->preDacSwingLvl = pCoexDm->curDacSwingLvl;
}