#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_22__ {int bNeedRecover0x948; int curAlgorithm; int bAutoTdmaAdjust; int preAlgorithm; int /*<<< orphan*/  backup0x948; } ;
struct TYPE_21__ {scalar_t__ bC2hBtInquiryPage; scalar_t__ bUnderIps; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* fBtcWrite4Byte ) (TYPE_1__*,int,int /*<<< orphan*/ ) ;scalar_t__ bManualControl; } ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  BT_8723B_2ANT_COEX_ALGO_A2DP 137 
#define  BT_8723B_2ANT_COEX_ALGO_A2DP_PANHS 136 
#define  BT_8723B_2ANT_COEX_ALGO_HID 135 
#define  BT_8723B_2ANT_COEX_ALGO_HID_A2DP 134 
#define  BT_8723B_2ANT_COEX_ALGO_HID_A2DP_PANEDR 133 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR 132 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR_A2DP 131 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR_HID 130 
#define  BT_8723B_2ANT_COEX_ALGO_PANHS 129 
#define  BT_8723B_2ANT_COEX_ALGO_SCO 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_4__* pCoexDm ; 
 TYPE_3__* pCoexSta ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(PBTC_COEXIST pBtCoexist)
{
	u8 algorithm = 0;

	FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], RunCoexistMechanism() ===>\n"));

	if (pBtCoexist->bManualControl) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n"));
		return;
	}

	if (pCoexSta->bUnderIps) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], wifi is under IPS !!!\n"));
		return;
	}

	algorithm = FUNC3(pBtCoexist);
	if (pCoexSta->bC2hBtInquiryPage && (BT_8723B_2ANT_COEX_ALGO_PANHS != algorithm)) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT is under inquiry/page scan !!\n"));
		FUNC4(pBtCoexist);
		return;
	} else {
		if (pCoexDm->bNeedRecover0x948) {
			pCoexDm->bNeedRecover0x948 = false;
			pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, pCoexDm->backup0x948);
		}
	}

	pCoexDm->curAlgorithm = algorithm;
	FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Algorithm = %d\n", pCoexDm->curAlgorithm));

	if (FUNC14(pBtCoexist)) {
		FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant common.\n"));
		pCoexDm->bAutoTdmaAdjust = false;
	} else {
		if (pCoexDm->curAlgorithm != pCoexDm->preAlgorithm) {
			FUNC0(
				BTC_MSG_ALGORITHM,
				ALGO_TRACE,
				(
					"[BTCoex], preAlgorithm =%d, curAlgorithm =%d\n",
					pCoexDm->preAlgorithm,
					pCoexDm->curAlgorithm
				)
			);
			pCoexDm->bAutoTdmaAdjust = false;
		}


		switch (pCoexDm->curAlgorithm) {
		case BT_8723B_2ANT_COEX_ALGO_SCO:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = SCO.\n"));
			FUNC12(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID.\n"));
			FUNC5(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_A2DP:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = A2DP.\n"));
			FUNC1(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_A2DP_PANHS:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS).\n"));
			FUNC2(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN(EDR).\n"));
			FUNC8(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANHS:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HS mode.\n"));
			FUNC11(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR_A2DP:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN+A2DP.\n"));
			FUNC9(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR_HID:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID.\n"));
			FUNC10(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID_A2DP_PANEDR:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN.\n"));
			FUNC7(pBtCoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID_A2DP:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID+A2DP.\n"));
			FUNC6(pBtCoexist);
			break;
		default:
			FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\n"));
			FUNC13(pBtCoexist);
			break;
		}
		pCoexDm->preAlgorithm = pCoexDm->curAlgorithm;
	}
}