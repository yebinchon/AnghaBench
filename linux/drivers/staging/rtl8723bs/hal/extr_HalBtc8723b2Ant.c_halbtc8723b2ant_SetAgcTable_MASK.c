#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_30__ {int /*<<< orphan*/  (* fBtcSet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* fBtcSetRfReg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ;int /*<<< orphan*/  (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE_SW_EXEC ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 int /*<<< orphan*/  BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC28(
	PBTC_COEXIST pBtCoexist, bool bAgcTableEn
)
{
	u8 rssiAdjustVal = 0;

	/* BB AGC Gain Table */
	if (bAgcTableEn) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], BB Agc Table On!\n"));
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6e1A0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6d1B0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6c1C0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6b1D0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6a1E0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x691F0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x68200001);
	} else {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], BB Agc Table Off!\n"));
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xaa1A0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa91B0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa81C0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa71D0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa61E0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa51F0001);
		pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa4200001);
	}


	/* RF Gain */
	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xef, 0xfffff, 0x02000);
	if (bAgcTableEn) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table On!\n"));
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x38fff);
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x38ffe);
	} else {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table Off!\n"));
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x380c3);
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x28ce6);
	}
	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xef, 0xfffff, 0x0);

	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xed, 0xfffff, 0x1);
	if (bAgcTableEn) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table On!\n"));
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x38fff);
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x38ffe);
	} else {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table Off!\n"));
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x380c3);
		pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x28ce6);
	}
	pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xed, 0xfffff, 0x0);

	/*  set rssiAdjustVal for wifi module. */
	if (bAgcTableEn)
		rssiAdjustVal = 8;

	pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON, &rssiAdjustVal);
}