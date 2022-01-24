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
struct TYPE_2__ {scalar_t__ curBtDecPwrLvl; scalar_t__ preBtDecPwrLvl; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_FW ; 
 int /*<<< orphan*/  ALGO_TRACE_FW_DETAIL ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* pCoexDm ; 

__attribute__((used)) static void FUNC2(
	PBTC_COEXIST pBtCoexist, bool bForceExec, u8 decBtPwrLvl
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE_FW,
		(
			"[BTCoex], %s Dec BT power level = %d\n",
			(bForceExec ? "force to" : ""),
			decBtPwrLvl
		)
	);
	pCoexDm->curBtDecPwrLvl = decBtPwrLvl;

	if (!bForceExec) {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_FW_DETAIL,
			(
				"[BTCoex], preBtDecPwrLvl =%d, curBtDecPwrLvl =%d\n",
				pCoexDm->preBtDecPwrLvl,
				pCoexDm->curBtDecPwrLvl
			)
		);

		if (pCoexDm->preBtDecPwrLvl == pCoexDm->curBtDecPwrLvl)
			return;
	}
	FUNC1(pBtCoexist, pCoexDm->curBtDecPwrLvl);

	pCoexDm->preBtDecPwrLvl = pCoexDm->curBtDecPwrLvl;
}