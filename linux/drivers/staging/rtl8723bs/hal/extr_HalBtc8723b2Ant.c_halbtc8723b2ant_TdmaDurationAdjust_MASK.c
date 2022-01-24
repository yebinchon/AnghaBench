#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int s32 ;
struct TYPE_11__ {int bAutoTdmaAdjust; int curPsTdma; int psTdmaDuAdjType; } ;
struct TYPE_10__ {int btRetryCnt; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_FW ; 
 int /*<<< orphan*/  ALGO_TRACE_FW_DETAIL ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__* pCoexDm ; 
 TYPE_5__* pCoexSta ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC6(
	PBTC_COEXIST pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval
)
{
	static s32 up, dn, m, n, WaitCount;
	s32 result;   /* 0: no change, +1: increase WiFi duration, -1: decrease WiFi duration */
	u8 retryCount = 0;

	FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW, ("[BTCoex], TdmaDurationAdjust()\n"));

	if (!pCoexDm->bAutoTdmaAdjust) {
		pCoexDm->bAutoTdmaAdjust = true;
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], first run TdmaDurationAdjust()!!\n"));
		{
			if (bScoHid) {
				if (bTxPause) {
					if (maxInterval == 1)
						FUNC1(13);
					else if (maxInterval == 2)
						FUNC1(14);
					else if (maxInterval == 3)
						FUNC1(15);
					else
						FUNC1(15);
				} else {
					if (maxInterval == 1)
						FUNC1(9);
					else if (maxInterval == 2)
						FUNC1(10);
					else if (maxInterval == 3)
						FUNC1(11);
					else
						FUNC1(11);
				}
			} else {
				if (bTxPause) {
					if (maxInterval == 1)
						FUNC1(5);
					else if (maxInterval == 2)
						FUNC1(6);
					else if (maxInterval == 3)
						FUNC1(7);
					else
						FUNC1(7);
				} else {
					if (maxInterval == 1)
						FUNC1(1);
					else if (maxInterval == 2)
						FUNC1(2);
					else if (maxInterval == 3)
						FUNC1(3);
					else
						FUNC1(3);
				}
			}
		}
		/*  */
		up = 0;
		dn = 0;
		m = 1;
		n = 3;
		result = 0;
		WaitCount = 0;
	} else {
		/* accquire the BT TRx retry count from BT_Info byte2 */
		retryCount = pCoexSta->btRetryCnt;
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount));
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_FW_DETAIL,
			(
				"[BTCoex], up =%d, dn =%d, m =%d, n =%d, WaitCount =%d\n",
				up, dn, m, n, WaitCount
			)
		);
		result = 0;
		WaitCount++;

		if (retryCount == 0) { /*  no retry in the last 2-second duration */
			up++;
			dn--;

			if (dn <= 0)
				dn = 0;

			if (up >= n) { /*  if 連續 n 個2秒 retry count為0, 則調寬WiFi duration */
				WaitCount = 0;
				n = 3;
				up = 0;
				dn = 0;
				result = 1;
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], Increase wifi duration!!\n"));
			}
		} else if (retryCount <= 3) { /*  <=3 retry in the last 2-second duration */
			up--;
			dn++;

			if (up <= 0)
				up = 0;

			if (dn == 2) { /*  if 連續 2 個2秒 retry count< 3, 則調窄WiFi duration */
				if (WaitCount <= 2)
					m++; /*  避免一直在兩個level中來回 */
				else
					m = 1;

				if (m >= 20) /* m 最大值 = 20 ' 最大120秒 recheck是否調整 WiFi duration. */
					m = 20;

				n = 3*m;
				up = 0;
				dn = 0;
				WaitCount = 0;
				result = -1;
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], Decrease wifi duration for retryCounter<3!!\n"));
			}
		} else { /* retry count > 3, 只要1次 retry count > 3, 則調窄WiFi duration */
			if (WaitCount == 1)
				m++; /*  避免一直在兩個level中來回 */
			else
				m = 1;

			if (m >= 20) /* m 最大值 = 20 ' 最大120秒 recheck是否調整 WiFi duration. */
				m = 20;

			n = 3*m;
			up = 0;
			dn = 0;
			WaitCount = 0;
			result = -1;
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], Decrease wifi duration for retryCounter>3!!\n"));
		}

		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], max Interval = %d\n", maxInterval));
		if (maxInterval == 1) {
			if (bTxPause) {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));

				if (pCoexDm->curPsTdma == 71)
					FUNC1(5);
				else if (pCoexDm->curPsTdma == 1)
					FUNC1(5);
				else if (pCoexDm->curPsTdma == 2)
					FUNC1(6);
				else if (pCoexDm->curPsTdma == 3)
					FUNC1(7);
				else if (pCoexDm->curPsTdma == 4)
					FUNC1(8);

				if (pCoexDm->curPsTdma == 9)
					FUNC1(13);
				else if (pCoexDm->curPsTdma == 10)
					FUNC1(14);
				else if (pCoexDm->curPsTdma == 11)
					FUNC1(15);
				else if (pCoexDm->curPsTdma == 12)
					FUNC1(16);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 5)
						FUNC1(6);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(8);
					else if (pCoexDm->curPsTdma == 13)
						FUNC1(14);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(16);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 8)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(6);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(5);
					else if (pCoexDm->curPsTdma == 16)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(14);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(13);
				}
			} else {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
				if (pCoexDm->curPsTdma == 5)
					FUNC1(71);
				else if (pCoexDm->curPsTdma == 6)
					FUNC1(2);
				else if (pCoexDm->curPsTdma == 7)
					FUNC1(3);
				else if (pCoexDm->curPsTdma == 8)
					FUNC1(4);

				if (pCoexDm->curPsTdma == 13)
					FUNC1(9);
				else if (pCoexDm->curPsTdma == 14)
					FUNC1(10);
				else if (pCoexDm->curPsTdma == 15)
					FUNC1(11);
				else if (pCoexDm->curPsTdma == 16)
					FUNC1(12);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 71)
						FUNC1(1);
					else if (pCoexDm->curPsTdma == 1)
						FUNC1(2);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(4);
					else if (pCoexDm->curPsTdma == 9)
						FUNC1(10);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(12);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 4)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(2);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(1);
					else if (pCoexDm->curPsTdma == 1)
						FUNC1(71);
					else if (pCoexDm->curPsTdma == 12)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(10);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(9);
				}
			}
		} else if (maxInterval == 2) {
			if (bTxPause) {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));
				if (pCoexDm->curPsTdma == 1)
					FUNC1(6);
				else if (pCoexDm->curPsTdma == 2)
					FUNC1(6);
				else if (pCoexDm->curPsTdma == 3)
					FUNC1(7);
				else if (pCoexDm->curPsTdma == 4)
					FUNC1(8);

				if (pCoexDm->curPsTdma == 9)
					FUNC1(14);
				else if (pCoexDm->curPsTdma == 10)
					FUNC1(14);
				else if (pCoexDm->curPsTdma == 11)
					FUNC1(15);
				else if (pCoexDm->curPsTdma == 12)
					FUNC1(16);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 5)
						FUNC1(6);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(8);
					else if (pCoexDm->curPsTdma == 13)
						FUNC1(14);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(16);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 8)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(6);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(6);
					else if (pCoexDm->curPsTdma == 16)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(14);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(14);
				}
			} else {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
				if (pCoexDm->curPsTdma == 5)
					FUNC1(2);
				else if (pCoexDm->curPsTdma == 6)
					FUNC1(2);
				else if (pCoexDm->curPsTdma == 7)
					FUNC1(3);
				else if (pCoexDm->curPsTdma == 8)
					FUNC1(4);

				if (pCoexDm->curPsTdma == 13)
					FUNC1(10);
				else if (pCoexDm->curPsTdma == 14)
					FUNC1(10);
				else if (pCoexDm->curPsTdma == 15)
					FUNC1(11);
				else if (pCoexDm->curPsTdma == 16)
					FUNC1(12);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 1)
						FUNC1(2);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(4);
					else if (pCoexDm->curPsTdma == 9)
						FUNC1(10);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(12);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 4)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(2);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(2);
					else if (pCoexDm->curPsTdma == 12)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(10);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(10);
				}
			}
		} else if (maxInterval == 3) {
			if (bTxPause) {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));
				if (pCoexDm->curPsTdma == 1)
					FUNC1(7);
				else if (pCoexDm->curPsTdma == 2)
					FUNC1(7);
				else if (pCoexDm->curPsTdma == 3)
					FUNC1(7);
				else if (pCoexDm->curPsTdma == 4)
					FUNC1(8);

				if (pCoexDm->curPsTdma == 9)
					FUNC1(15);
				else if (pCoexDm->curPsTdma == 10)
					FUNC1(15);
				else if (pCoexDm->curPsTdma == 11)
					FUNC1(15);
				else if (pCoexDm->curPsTdma == 12)
					FUNC1(16);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 5)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(8);
					else if (pCoexDm->curPsTdma == 13)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(16);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 8)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 7)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 6)
						FUNC1(7);
					else if (pCoexDm->curPsTdma == 16)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 15)
						FUNC1(15);
					else if (pCoexDm->curPsTdma == 14)
						FUNC1(15);
				}
			} else {
				FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
				if (pCoexDm->curPsTdma == 5)
					FUNC1(3);
				else if (pCoexDm->curPsTdma == 6)
					FUNC1(3);
				else if (pCoexDm->curPsTdma == 7)
					FUNC1(3);
				else if (pCoexDm->curPsTdma == 8)
					FUNC1(4);

				if (pCoexDm->curPsTdma == 13)
					FUNC1(11);
				else if (pCoexDm->curPsTdma == 14)
					FUNC1(11);
				else if (pCoexDm->curPsTdma == 15)
					FUNC1(11);
				else if (pCoexDm->curPsTdma == 16)
					FUNC1(12);

				if (result == -1) {
					if (pCoexDm->curPsTdma == 1)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(4);
					else if (pCoexDm->curPsTdma == 9)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(12);
				} else if (result == 1) {
					if (pCoexDm->curPsTdma == 4)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 3)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 2)
						FUNC1(3);
					else if (pCoexDm->curPsTdma == 12)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 11)
						FUNC1(11);
					else if (pCoexDm->curPsTdma == 10)
						FUNC1(11);
				}
			}
		}
	}

	/*  if current PsTdma not match with the recorded one (when scan, dhcp...), */
	/*  then we have to adjust it back to the previous record one. */
	if (pCoexDm->curPsTdma != pCoexDm->psTdmaDuAdjType) {
		bool bScan = false, bLink = false, bRoam = false;
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE_FW_DETAIL,
			(
				"[BTCoex], PsTdma type mismatch!!!, curPsTdma =%d, recordPsTdma =%d\n",
				pCoexDm->curPsTdma,
				pCoexDm->psTdmaDuAdjType
			)
		);

		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_SCAN, &bScan);
		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_LINK, &bLink);
		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_ROAM, &bRoam);

		if (!bScan && !bLink && !bRoam)
			FUNC2(pBtCoexist, NORMAL_EXEC, true, pCoexDm->psTdmaDuAdjType);
		else {
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\n"));
		}
	}
}