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
struct TYPE_2__ {int bCurRfRxLpfShrink; int bPreRfRxLpfShrink; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_SW ; 
 int /*<<< orphan*/  ALGO_TRACE_SW_DETAIL ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pCoexDm ; 

__attribute__((used)) static void FUNC2(
	PBTC_COEXIST pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE_SW,
		(
			"[BTCoex], %s turn Rx RF Shrink = %s\n",
			(bForceExec ? "force to" : ""),
			(bRxRfShrinkOn ? "ON" : "OFF")
		)
	);
	pCoexDm->bCurRfRxLpfShrink = bRxRfShrinkOn;

	if (!bForceExec) {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_SW_DETAIL,
			(
				"[BTCoex], bPreRfRxLpfShrink =%d, bCurRfRxLpfShrink =%d\n",
				pCoexDm->bPreRfRxLpfShrink,
				pCoexDm->bCurRfRxLpfShrink
			)
		);

		if (pCoexDm->bPreRfRxLpfShrink == pCoexDm->bCurRfRxLpfShrink)
			return;
	}
	FUNC1(pBtCoexist, pCoexDm->bCurRfRxLpfShrink);

	pCoexDm->bPreRfRxLpfShrink = pCoexDm->bCurRfRxLpfShrink;
}