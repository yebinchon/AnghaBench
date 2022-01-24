#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct adapter {int dummy; } ;
struct TYPE_4__ {int bBtCtrlLps; int bBtLpsOn; } ;
struct TYPE_5__ {TYPE_1__ btInfo; struct adapter* Adapter; } ;
typedef  TYPE_2__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

__attribute__((used)) static void FUNC2(PBTC_COEXIST pBtCoexist)
{
	struct adapter *padapter;


	FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Normal LPS behavior!!!\n"));

	padapter = pBtCoexist->Adapter;

	if (pBtCoexist->btInfo.bBtCtrlLps) {
		pBtCoexist->btInfo.bBtLpsOn = false;
		FUNC1(padapter);
		pBtCoexist->btInfo.bBtCtrlLps = false;

		/*  recover the LPS state to the original */
	}
}