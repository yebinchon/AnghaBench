#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int s8 ;
struct TYPE_13__ {int bCurPsTdmaOn; int curPsTdma; int bPrePsTdmaOn; scalar_t__ prePsTdma; } ;
struct TYPE_12__ {int nScanAPNum; int /*<<< orphan*/  bForceLpsOn; } ;
struct TYPE_11__ {scalar_t__ bSlaveRole; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* fBtcSet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef  TYPE_1__* PBTC_COEXIST ;
typedef  TYPE_2__* PBTC_BT_LINK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE ; 
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 int /*<<< orphan*/  BTC_ANT_PATH_PTA ; 
 int /*<<< orphan*/  BTC_ANT_PATH_WIFI ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int,int) ; 
 TYPE_6__* pCoexDm ; 
 TYPE_5__* pCoexSta ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(
	PBTC_COEXIST pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
)
{
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
	bool bWifiBusy = false;
	u8 rssiAdjustVal = 0;
	u8 psTdmaByte4Val = 0x50, psTdmaByte0Val = 0x51, psTdmaByte3Val =  0x10;
	s8 nWiFiDurationAdjust = 0x0;
	/* u32 		fwVer = 0; */

	/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW, ("[BTCoex], %s turn %s PS TDMA, type =%d\n", */
	/* 	(bForceExec? "force to":""), (bTurnOn? "ON":"OFF"), type)); */
	pCoexDm->bCurPsTdmaOn = bTurnOn;
	pCoexDm->curPsTdma = type;

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);

	if (pCoexDm->bCurPsTdmaOn) {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE,
			(
				"[BTCoex], ********** TDMA(on, %d) **********\n",
				pCoexDm->curPsTdma
			)
		);
	} else {
		FUNC0(
			BTC_MSG_ALGORITHM,
			ALGO_TRACE,
			(
				"[BTCoex], ********** TDMA(off, %d) **********\n",
				pCoexDm->curPsTdma
			)
		);
	}

	if (!bForceExec) {
		if (
			(pCoexDm->bPrePsTdmaOn == pCoexDm->bCurPsTdmaOn) &&
			(pCoexDm->prePsTdma == pCoexDm->curPsTdma)
		)
			return;
	}

	if (pCoexSta->nScanAPNum <= 5)
		nWiFiDurationAdjust = 5;
	else if  (pCoexSta->nScanAPNum >= 40)
		nWiFiDurationAdjust = -15;
	else if  (pCoexSta->nScanAPNum >= 20)
		nWiFiDurationAdjust = -10;

	if (!pCoexSta->bForceLpsOn) { /* only for A2DP-only case 1/2/9/11 */
		psTdmaByte0Val = 0x61;  /* no null-pkt */
		psTdmaByte3Val = 0x11; /*  no tx-pause at BT-slot */
		psTdmaByte4Val = 0x10; /*  0x778 = d/1 toggle */
	}


	if (bTurnOn) {
		if (pBtLinkInfo->bSlaveRole)
			psTdmaByte4Val = psTdmaByte4Val | 0x1;  /* 0x778 = 0x1 at wifi slot (no blocking BT Low-Pri pkts) */


		switch (type) {
		default:
			FUNC2(
				pBtCoexist, 0x51, 0x1a, 0x1a, 0x0, psTdmaByte4Val
			);
			break;
		case 1:
			FUNC2(
				pBtCoexist,
				psTdmaByte0Val,
				0x3a+nWiFiDurationAdjust,
				0x03,
				psTdmaByte3Val,
				psTdmaByte4Val
			);
			break;
		case 2:
			FUNC2(
				pBtCoexist,
				psTdmaByte0Val,
				0x2d+nWiFiDurationAdjust,
				0x03,
				psTdmaByte3Val,
				psTdmaByte4Val
			);
			break;
		case 3:
			FUNC2(
				pBtCoexist, 0x51, 0x1d, 0x1d, 0x0, 0x10
			);
			break;
		case 4:
			FUNC2(
				pBtCoexist, 0x93, 0x15, 0x3, 0x14, 0x0
			);
			break;
		case 5:
			FUNC2(
				pBtCoexist, 0x61, 0x15, 0x3, 0x11, 0x10
			);
			break;
		case 6:
			FUNC2(
				pBtCoexist, 0x61, 0x20, 0x3, 0x11, 0x11
			);
			break;
		case 7:
			FUNC2(pBtCoexist, 0x13, 0xc, 0x5, 0x0, 0x0);
			break;
		case 8:
			FUNC2(
				pBtCoexist, 0x93, 0x25, 0x3, 0x10, 0x0
			);
			break;
		case 9:
			FUNC2(
				pBtCoexist,
				psTdmaByte0Val,
				0x21,
				0x3,
				psTdmaByte3Val,
				psTdmaByte4Val
			);
			break;
		case 10:
			FUNC2(pBtCoexist, 0x13, 0xa, 0xa, 0x0, 0x40);
			break;
		case 11:
			FUNC2(
				pBtCoexist,
				psTdmaByte0Val,
				0x21,
				0x03,
				psTdmaByte3Val,
				psTdmaByte4Val
			);
			break;
		case 12:
			FUNC2(
				pBtCoexist, 0x51, 0x0a, 0x0a, 0x0, 0x50
			);
			break;
		case 13:
			FUNC2(
				pBtCoexist, 0x51, 0x12, 0x12, 0x0, 0x10
			);
			break;
		case 14:
			FUNC2(
				pBtCoexist, 0x51, 0x21, 0x3, 0x10, psTdmaByte4Val
			);
			break;
		case 15:
			FUNC2(
				pBtCoexist, 0x13, 0xa, 0x3, 0x8, 0x0
			);
			break;
		case 16:
			FUNC2(
				pBtCoexist, 0x93, 0x15, 0x3, 0x10, 0x0
			);
			break;
		case 18:
			FUNC2(
				pBtCoexist, 0x93, 0x25, 0x3, 0x10, 0x0
			);
			break;
		case 20:
			FUNC2(
				pBtCoexist, 0x61, 0x3f, 0x03, 0x11, 0x10

			);
			break;
		case 21:
			FUNC2(
				pBtCoexist, 0x61, 0x25, 0x03, 0x11, 0x11
			);
			break;
		case 22:
			FUNC2(
				pBtCoexist, 0x61, 0x25, 0x03, 0x11, 0x10
			);
			break;
		case 23:
			FUNC2(
				pBtCoexist, 0xe3, 0x25, 0x3, 0x31, 0x18
			);
			break;
		case 24:
			FUNC2(
				pBtCoexist, 0xe3, 0x15, 0x3, 0x31, 0x18
			);
			break;
		case 25:
			FUNC2(
				pBtCoexist, 0xe3, 0xa, 0x3, 0x31, 0x18
			);
			break;
		case 26:
			FUNC2(
				pBtCoexist, 0xe3, 0xa, 0x3, 0x31, 0x18
			);
			break;
		case 27:
			FUNC2(
				pBtCoexist, 0xe3, 0x25, 0x3, 0x31, 0x98
			);
			break;
		case 28:
			FUNC2(
				pBtCoexist, 0x69, 0x25, 0x3, 0x31, 0x0
			);
			break;
		case 29:
			FUNC2(
				pBtCoexist, 0xab, 0x1a, 0x1a, 0x1, 0x10
			);
			break;
		case 30:
			FUNC2(
				pBtCoexist, 0x51, 0x30, 0x3, 0x10, 0x10
			);
			break;
		case 31:
			FUNC2(
				pBtCoexist, 0xd3, 0x1a, 0x1a, 0x0, 0x58
			);
			break;
		case 32:
			FUNC2(
				pBtCoexist, 0x61, 0x35, 0x3, 0x11, 0x11
			);
			break;
		case 33:
			FUNC2(
				pBtCoexist, 0xa3, 0x25, 0x3, 0x30, 0x90
			);
			break;
		case 34:
			FUNC2(
				pBtCoexist, 0x53, 0x1a, 0x1a, 0x0, 0x10
			);
			break;
		case 35:
			FUNC2(
				pBtCoexist, 0x63, 0x1a, 0x1a, 0x0, 0x10
			);
			break;
		case 36:
			FUNC2(
				pBtCoexist, 0xd3, 0x12, 0x3, 0x14, 0x50
			);
			break;
		case 40: /*  SoftAP only with no sta associated, BT disable , TDMA mode for power saving */
			/* here softap mode screen off will cost 70-80mA for phone */
			FUNC2(
				pBtCoexist, 0x23, 0x18, 0x00, 0x10, 0x24
			);
			break;
		}
	} else {

		/*  disable PS tdma */
		switch (type) {
		case 8: /* PTA Control */
			FUNC2(pBtCoexist, 0x8, 0x0, 0x0, 0x0, 0x0);
			FUNC1(
				pBtCoexist, BTC_ANT_PATH_PTA, false, false
			);
			break;
		case 0:
		default:  /* Software control, Antenna at BT side */
			FUNC2(pBtCoexist, 0x0, 0x0, 0x0, 0x0, 0x0);
			FUNC1(
				pBtCoexist, BTC_ANT_PATH_BT, false, false
			);
			break;
		case 9:   /* Software control, Antenna at WiFi side */
			FUNC2(pBtCoexist, 0x0, 0x0, 0x0, 0x0, 0x0);
			FUNC1(
				pBtCoexist, BTC_ANT_PATH_WIFI, false, false
			);
			break;
		}
	}

	rssiAdjustVal = 0;
	pBtCoexist->fBtcSet(
		pBtCoexist, BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE, &rssiAdjustVal
	);

	/*  update pre state */
	pCoexDm->bPrePsTdmaOn = pCoexDm->bCurPsTdmaOn;
	pCoexDm->prePsTdma = pCoexDm->curPsTdma;
}