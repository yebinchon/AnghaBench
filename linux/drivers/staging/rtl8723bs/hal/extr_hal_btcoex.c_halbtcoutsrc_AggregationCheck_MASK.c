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
struct TYPE_4__ {scalar_t__ bPreBtCtrlAggBufSize; scalar_t__ bBtCtrlAggBufSize; scalar_t__ preAggBufSize; scalar_t__ aggBufSize; scalar_t__ bRejectAggPkt; } ;
struct TYPE_5__ {TYPE_1__ btInfo; struct adapter* Adapter; } ;
typedef  TYPE_2__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 

__attribute__((used)) static void FUNC1(PBTC_COEXIST pBtCoexist)
{
	struct adapter *padapter;
	bool bNeedToAct;


	padapter = pBtCoexist->Adapter;
	bNeedToAct = false;

	if (pBtCoexist->btInfo.bRejectAggPkt) {
		FUNC0(padapter, true);
	} else {
		if (pBtCoexist->btInfo.bPreBtCtrlAggBufSize !=
			pBtCoexist->btInfo.bBtCtrlAggBufSize) {
			bNeedToAct = true;
			pBtCoexist->btInfo.bPreBtCtrlAggBufSize = pBtCoexist->btInfo.bBtCtrlAggBufSize;
		}

		if (pBtCoexist->btInfo.bBtCtrlAggBufSize) {
			if (pBtCoexist->btInfo.preAggBufSize !=
				pBtCoexist->btInfo.aggBufSize){
				bNeedToAct = true;
			}
			pBtCoexist->btInfo.preAggBufSize = pBtCoexist->btInfo.aggBufSize;
		}

		if (bNeedToAct) {
			FUNC0(padapter, true);
			FUNC0(padapter, false);
		}
	}
}