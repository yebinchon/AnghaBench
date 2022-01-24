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
struct TYPE_2__ {int bCurAgcTableEn; int bPreAgcTableEn; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_SW ; 
 int /*<<< orphan*/  ALGO_TRACE_SW_DETAIL ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pCoexDm ; 

__attribute__((used)) static void FUNC2(
	PBTC_COEXIST pBtCoexist, bool bForceExec, bool bAgcTableEn
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE_SW,
		(
			"[BTCoex], %s %s Agc Table\n",
			(bForceExec ? "force to" : ""),
			(bAgcTableEn ? "Enable" : "Disable")
		)
	);
	pCoexDm->bCurAgcTableEn = bAgcTableEn;

	if (!bForceExec) {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_SW_DETAIL,
			(
				"[BTCoex], bPreAgcTableEn =%d, bCurAgcTableEn =%d\n",
				pCoexDm->bPreAgcTableEn,
				pCoexDm->bCurAgcTableEn
			)
		);

		if (pCoexDm->bPreAgcTableEn == pCoexDm->bCurAgcTableEn)
			return;
	}
	FUNC1(pBtCoexist, bAgcTableEn);

	pCoexDm->bPreAgcTableEn = pCoexDm->bCurAgcTableEn;
}