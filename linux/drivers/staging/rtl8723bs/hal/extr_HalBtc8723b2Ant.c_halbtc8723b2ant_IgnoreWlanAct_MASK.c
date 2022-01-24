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
struct TYPE_2__ {int bCurIgnoreWlanAct; int bPreIgnoreWlanAct; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_FW ; 
 int /*<<< orphan*/  ALGO_TRACE_FW_DETAIL ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pCoexDm ; 

__attribute__((used)) static void FUNC2(
	PBTC_COEXIST pBtCoexist, bool bForceExec, bool bEnable
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE_FW,
		(
			"[BTCoex], %s turn Ignore WlanAct %s\n",
			(bForceExec ? "force to" : ""),
			(bEnable ? "ON" : "OFF")
		)
	);

	pCoexDm->bCurIgnoreWlanAct = bEnable;

	if (!bForceExec) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], bPreIgnoreWlanAct = %d, bCurIgnoreWlanAct = %d!!\n",
			pCoexDm->bPreIgnoreWlanAct, pCoexDm->bCurIgnoreWlanAct));

		if (pCoexDm->bPreIgnoreWlanAct == pCoexDm->bCurIgnoreWlanAct)
			return;
	}
	FUNC1(pBtCoexist, bEnable);

	pCoexDm->bPreIgnoreWlanAct = pCoexDm->bCurIgnoreWlanAct;
}