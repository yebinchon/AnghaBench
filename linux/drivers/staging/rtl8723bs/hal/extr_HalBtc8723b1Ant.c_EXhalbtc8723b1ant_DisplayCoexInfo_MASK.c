#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_65__   TYPE_5__ ;
typedef  struct TYPE_64__   TYPE_57__ ;
typedef  struct TYPE_63__   TYPE_56__ ;
typedef  struct TYPE_62__   TYPE_4__ ;
typedef  struct TYPE_61__   TYPE_3__ ;
typedef  struct TYPE_60__   TYPE_2__ ;
typedef  struct TYPE_59__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ s32 ;
struct TYPE_65__ {int /*<<< orphan*/  btdmAntPos; int /*<<< orphan*/  btdmAntNum; int /*<<< orphan*/  pgAntNum; } ;
struct TYPE_64__ {scalar_t__ btStatus; int curPsTdma; int /*<<< orphan*/  backupAmpduMaxTime; int /*<<< orphan*/  backupRetryLimit; int /*<<< orphan*/  backupArfrCnt2; int /*<<< orphan*/  backupArfrCnt1; int /*<<< orphan*/  bCurIgnoreWlanAct; int /*<<< orphan*/  bAutoTdmaAdjust; int /*<<< orphan*/ * psTdmaPara; int /*<<< orphan*/  bCurLowPenaltyRa; int /*<<< orphan*/ * wifiChnlInfo; } ;
struct TYPE_63__ {int btInfoExt; scalar_t__ highPriorityRx; int highPriorityTx; scalar_t__ lowPriorityRx; int lowPriorityTx; int /*<<< orphan*/  nCRCErr_11nAgg; int /*<<< orphan*/  nCRCErr_11n; int /*<<< orphan*/  nCRCErr_11g; int /*<<< orphan*/  nCRCErr_CCK; int /*<<< orphan*/  nCRCOK_11nAgg; int /*<<< orphan*/  nCRCOK_11n; int /*<<< orphan*/  nCRCOK_11g; int /*<<< orphan*/  nCRCOK_CCK; int /*<<< orphan*/  nCoexTableType; scalar_t__ bUnderLps; scalar_t__ bUnderIps; scalar_t__* btInfoC2hCnt; int /*<<< orphan*/ ** btInfoC2h; int /*<<< orphan*/  popEventCnt; int /*<<< orphan*/  btRetryCnt; int /*<<< orphan*/  btRssi; scalar_t__ bC2hBtInquiryPage; scalar_t__ bCCKLock; int /*<<< orphan*/  nScanAPNum; scalar_t__ bWiFiIsHighPriTask; } ;
struct TYPE_62__ {scalar_t__ bSlaveRole; int /*<<< orphan*/  bA2dpExist; int /*<<< orphan*/  bPanExist; int /*<<< orphan*/  bHidExist; int /*<<< orphan*/  bScoExist; } ;
struct TYPE_59__ {int /*<<< orphan*/  raMask; int /*<<< orphan*/  aggBufSize; scalar_t__ bBtCtrlAggBufSize; scalar_t__ bRejectAggPkt; int /*<<< orphan*/  rpwmVal; int /*<<< orphan*/  lpsVal; scalar_t__ bBtDisabled; } ;
struct TYPE_60__ {int hciVersion; scalar_t__ bProfileNotified; } ;
struct TYPE_61__ {int* cliBuf; scalar_t__ (* fBtcRead4Byte ) (TYPE_3__*,int) ;int (* fBtcRead1Byte ) (TYPE_3__*,int) ;int /*<<< orphan*/  (* fBtcDispDbgMsg ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* fBtcRead2Byte ) (TYPE_3__*,int) ;TYPE_1__ btInfo; scalar_t__ bManualControl; int /*<<< orphan*/  (* fBtcGet ) (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ;scalar_t__ bStopCoexDm; TYPE_4__ btLinkInfo; TYPE_2__ stackInfo; TYPE_5__ boardInfo; } ;
typedef  TYPE_2__* PBTC_STACK_INFO ;
typedef  TYPE_3__* PBTC_COEXIST ;
typedef  TYPE_4__* PBTC_BT_LINK_INFO ;
typedef  TYPE_5__* PBTC_BOARD_INFO ;

/* Variables and functions */
 int BIT0 ; 
 int /*<<< orphan*/  BTC_DBG_DISP_BT_LINK_INFO ; 
 int /*<<< orphan*/  BTC_DBG_DISP_COEX_STATISTICS ; 
 int /*<<< orphan*/  BTC_DBG_DISP_FW_PWR_MODE_CMD ; 
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_B_MODE ; 
 int /*<<< orphan*/  BTC_GET_S4_HS_RSSI ; 
 int /*<<< orphan*/  BTC_GET_S4_WIFI_RSSI ; 
 int /*<<< orphan*/  BTC_GET_U1_WIFI_DOT11_CHNL ; 
 int /*<<< orphan*/  BTC_GET_U1_WIFI_HS_CHNL ; 
 int /*<<< orphan*/  BTC_GET_U4_BT_PATCH_VER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_FW_VER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_TRAFFIC_DIRECTION ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 scalar_t__ BTC_WIFI_TRAFFIC_TX ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE ; 
 int BT_INFO_SRC_8723B_1ANT_MAX ; 
 int /*<<< orphan*/  BT_TMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * GLBtInfoSrc8723b1Ant ; 
 int /*<<< orphan*/  GLCoexVer8723b1Ant ; 
 int /*<<< orphan*/  GLCoexVerDate8723b1Ant ; 
 scalar_t__ WIFI_AP_CONNECTED ; 
 scalar_t__ WIFI_HS_CONNECTED ; 
 scalar_t__ WIFI_P2P_GC_CONNECTED ; 
 scalar_t__ WIFI_P2P_GO_CONNECTED ; 
 scalar_t__ WIFI_STA_CONNECTED ; 
 TYPE_57__* pCoexDm ; 
 TYPE_56__* pCoexSta ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 
 int FUNC16 (TYPE_3__*,int) ; 
 int FUNC17 (TYPE_3__*,int) ; 
 scalar_t__ FUNC18 (TYPE_3__*,int) ; 
 scalar_t__ FUNC19 (TYPE_3__*,int) ; 
 scalar_t__ FUNC20 (TYPE_3__*,int) ; 
 int FUNC21 (TYPE_3__*,int) ; 
 scalar_t__ FUNC22 (TYPE_3__*,int) ; 
 int FUNC23 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC25 (TYPE_3__*,int) ; 
 scalar_t__ FUNC26 (TYPE_3__*,int) ; 
 scalar_t__ FUNC27 (TYPE_3__*,int) ; 
 int FUNC28 (TYPE_3__*,int) ; 
 int FUNC29 (TYPE_3__*,int) ; 
 scalar_t__ FUNC30 (TYPE_3__*,int) ; 
 int FUNC31 (TYPE_3__*,int) ; 
 scalar_t__ FUNC32 (TYPE_3__*,int) ; 
 int FUNC33 (TYPE_3__*,int) ; 
 scalar_t__ FUNC34 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC36 (TYPE_3__*,int) ; 
 scalar_t__ FUNC37 (TYPE_3__*,int) ; 
 scalar_t__ FUNC38 (TYPE_3__*,int) ; 
 scalar_t__ FUNC39 (TYPE_3__*,int) ; 
 scalar_t__ FUNC40 (TYPE_3__*,int) ; 
 int FUNC41 (TYPE_3__*,int) ; 
 int FUNC42 (TYPE_3__*,int) ; 
 scalar_t__ FUNC43 (TYPE_3__*,int) ; 
 scalar_t__ FUNC44 (TYPE_3__*,int) ; 
 scalar_t__ FUNC45 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 

void FUNC52(PBTC_COEXIST pBtCoexist)
{
	PBTC_BOARD_INFO pBoardInfo = &pBtCoexist->boardInfo;
	PBTC_STACK_INFO pStackInfo = &pBtCoexist->stackInfo;
	PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
	u8 *cliBuf = pBtCoexist->cliBuf;
	u8 u1Tmp[4], i, btInfoExt, psTdmaCase = 0;
	u16 u2Tmp[4];
	u32 u4Tmp[4];
	bool bRoam = false;
	bool bScan = false;
	bool bLink = false;
	bool bWifiUnder5G = false;
	bool bWifiUnderBMode = false;
	bool bBtHsOn = false;
	bool bWifiBusy = false;
	s32 wifiRssi = 0, btHsRssi = 0;
	u32 wifiBw, wifiTrafficDir, faOfdm, faCck, wifiLinkStatus;
	u8 wifiDot11Chnl, wifiHsChnl;
	u32 fwVer = 0, btPatchVer = 0;
	static u8 PopReportIn10s;

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n ============[BT Coexist info]============"
	);
	FUNC0(cliBuf);

	if (pBtCoexist->bManualControl) {
		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n ============[Under Manual Control]============"
		);
		FUNC0(cliBuf);
		FUNC1(cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n =========================================="
		);
		FUNC0(cliBuf);
	}
	if (pBtCoexist->bStopCoexDm) {
		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n ============[Coex is STOPPED]============"
		);
		FUNC0(cliBuf);
		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n =========================================="
		);
		FUNC0(cliBuf);
	}

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d/ %d", "Ant PG Num/ Ant Mech/ Ant Pos:", \
		pBoardInfo->pgAntNum,
		pBoardInfo->btdmAntNum,
		pBoardInfo->btdmAntPos
	);
	FUNC0(cliBuf);

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %s / %d", "BT stack/ hci ext ver", \
		((pStackInfo->bProfileNotified) ? "Yes" : "No"),
		pStackInfo->hciVersion
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_BT_PATCH_VER, &btPatchVer);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d_%x/ 0x%x/ 0x%x(%d)", "CoexVer/ FwVer/ PatchVer", \
		GLCoexVerDate8723b1Ant,
		GLCoexVer8723b1Ant,
		fwVer,
		btPatchVer,
		btPatchVer
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_DOT11_CHNL, &wifiDot11Chnl);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_HS_CHNL, &wifiHsChnl);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d / %d(%d)", "Dot11 channel / HsChnl(HsMode)", \
		wifiDot11Chnl,
		wifiHsChnl,
		bBtHsOn
	);
	FUNC0(cliBuf);

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %02x %02x %02x ", "H2C Wifi inform bt chnl Info", \
		pCoexDm->wifiChnlInfo[0],
		pCoexDm->wifiChnlInfo[1],
		pCoexDm->wifiChnlInfo[2]
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_S4_WIFI_RSSI, &wifiRssi);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_S4_HS_RSSI, &btHsRssi);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d", "Wifi rssi/ HS rssi", \
		wifiRssi-100, btHsRssi-100
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_SCAN, &bScan);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_LINK, &bLink);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_ROAM, &bRoam);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d/ %d/ %s", "Wifi bLink/ bRoam/ bScan/ bHi-Pri", \
		bLink, bRoam, bScan, ((pCoexSta->bWiFiIsHighPriTask) ? "1" : "0")
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_UNDER_5G, &bWifiUnder5G);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);
	pBtCoexist->fBtcGet(
		pBtCoexist, BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, &wifiTrafficDir
	);
	pBtCoexist->fBtcGet(
		pBtCoexist, BTC_GET_BL_WIFI_UNDER_B_MODE, &bWifiUnderBMode
	);

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %s / %s/ %s/ AP =%d/ %s ", "Wifi status", \
		(bWifiUnder5G ? "5G" : "2.4G"),
		((bWifiUnderBMode) ? "11b" : ((BTC_WIFI_BW_LEGACY == wifiBw) ? "11bg" : (((BTC_WIFI_BW_HT40 == wifiBw) ? "HT40" : "HT20")))),
		((!bWifiBusy) ? "idle" : ((BTC_WIFI_TRAFFIC_TX == wifiTrafficDir) ? "uplink" : "downlink")),
		pCoexSta->nScanAPNum,
		(pCoexSta->bCCKLock) ? "Lock" : "noLock"
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcGet(
		pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus
	);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d/ %d/ %d/ %d", "sta/vwifi/hs/p2pGo/p2pGc", \
		((wifiLinkStatus&WIFI_STA_CONNECTED) ? 1 : 0),
		((wifiLinkStatus&WIFI_AP_CONNECTED) ? 1 : 0),
		((wifiLinkStatus&WIFI_HS_CONNECTED) ? 1 : 0),
		((wifiLinkStatus&WIFI_P2P_GO_CONNECTED) ? 1 : 0),
		((wifiLinkStatus&WIFI_P2P_GC_CONNECTED) ? 1 : 0)
	);
	FUNC0(cliBuf);


	PopReportIn10s++;
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = [%s/ %d/ %d/ %d] ", "BT [status/ rssi/ retryCnt/ popCnt]", \
		((pBtCoexist->btInfo.bBtDisabled) ? ("disabled") : ((pCoexSta->bC2hBtInquiryPage) ? ("inquiry/page scan") : ((BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus) ? "non-connected idle" :
		((BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus) ? "connected-idle" : "busy")))),
		pCoexSta->btRssi, pCoexSta->btRetryCnt, pCoexSta->popEventCnt
	);
	FUNC0(cliBuf);

	if (PopReportIn10s >= 5) {
		pCoexSta->popEventCnt = 0;
		PopReportIn10s = 0;
	}


	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d / %d / %d / %d", "SCO/HID/PAN/A2DP", \
		pBtLinkInfo->bScoExist,
		pBtLinkInfo->bHidExist,
		pBtLinkInfo->bPanExist,
		pBtLinkInfo->bA2dpExist
	);
	FUNC0(cliBuf);

	if (pStackInfo->bProfileNotified) {
		pBtCoexist->fBtcDispDbgMsg(pBtCoexist, BTC_DBG_DISP_BT_LINK_INFO);
	} else {
		FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s", "BT Role", \
		(pBtLinkInfo->bSlaveRole) ? "Slave" : "Master");
		FUNC0(cliBuf);
	}


	btInfoExt = pCoexSta->btInfoExt;
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %s", "BT Info A2DP rate", \
		(btInfoExt&BIT0) ? "Basic rate" : "EDR rate"
	);
	FUNC0(cliBuf);

	for (i = 0; i < BT_INFO_SRC_8723B_1ANT_MAX; i++) {
		if (pCoexSta->btInfoC2hCnt[i]) {
			FUNC1(
				cliBuf,
				BT_TMP_BUF_SIZE,
				"\r\n %-35s = %02x %02x %02x %02x %02x %02x %02x(%d)", GLBtInfoSrc8723b1Ant[i], \
				pCoexSta->btInfoC2h[i][0], pCoexSta->btInfoC2h[i][1],
				pCoexSta->btInfoC2h[i][2], pCoexSta->btInfoC2h[i][3],
				pCoexSta->btInfoC2h[i][4], pCoexSta->btInfoC2h[i][5],
				pCoexSta->btInfoC2h[i][6], pCoexSta->btInfoC2hCnt[i]
			);
			FUNC0(cliBuf);
		}
	}
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %s/%s, (0x%x/0x%x)", "PS state, IPS/LPS, (lps/rpwm)", \
		(pCoexSta->bUnderIps ? "IPS ON" : "IPS OFF"),
		(pCoexSta->bUnderLps ? "LPS ON" : "LPS OFF"),
		pBtCoexist->btInfo.lpsVal,
		pBtCoexist->btInfo.rpwmVal
	);
	FUNC0(cliBuf);
	pBtCoexist->fBtcDispDbgMsg(pBtCoexist, BTC_DBG_DISP_FW_PWR_MODE_CMD);

	if (!pBtCoexist->bManualControl) {
		/*  Sw mechanism */
		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n %-35s", "============[Sw mechanism]============"
		);
		FUNC0(cliBuf);

		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n %-35s = %d", "SM[LowPenaltyRA]", \
			pCoexDm->bCurLowPenaltyRa
		);
		FUNC0(cliBuf);

		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n %-35s = %s/ %s/ %d ", "DelBA/ BtCtrlAgg/ AggSize", \
			(pBtCoexist->btInfo.bRejectAggPkt ? "Yes" : "No"),
			(pBtCoexist->btInfo.bBtCtrlAggBufSize ? "Yes" : "No"),
			pBtCoexist->btInfo.aggBufSize
		);
		FUNC0(cliBuf);
		FUNC1(
			cliBuf,
			BT_TMP_BUF_SIZE,
			"\r\n %-35s = 0x%x ", "Rate Mask", \
			pBtCoexist->btInfo.raMask
		);
		FUNC0(cliBuf);

		/*  Fw mechanism */
		FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Fw mechanism]============");
		FUNC0(cliBuf);

		psTdmaCase = pCoexDm->curPsTdma;
		FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %02x %02x %02x %02x %02x case-%d (auto:%d)", "PS TDMA", \
			pCoexDm->psTdmaPara[0], pCoexDm->psTdmaPara[1],
			pCoexDm->psTdmaPara[2], pCoexDm->psTdmaPara[3],
			pCoexDm->psTdmaPara[4], psTdmaCase, pCoexDm->bAutoTdmaAdjust);
		FUNC0(cliBuf);

		FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d", "Coex Table Type", \
			pCoexSta->nCoexTableType);
		FUNC0(cliBuf);

		FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d", "IgnWlanAct", \
			pCoexDm->bCurIgnoreWlanAct);
		FUNC0(cliBuf);

		/*
		CL_SPRINTF(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x ", "Latest error condition(should be 0)", \
			pCoexDm->errorCondition);
		CL_PRINTF(cliBuf);
		*/
	}

	/*  Hw setting */
	FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Hw setting]============");
	FUNC0(cliBuf);

	FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/0x%x/0x%x/0x%x", "backup ARFR1/ARFR2/RL/AMaxTime", \
		pCoexDm->backupArfrCnt1, pCoexDm->backupArfrCnt2, pCoexDm->backupRetryLimit, pCoexDm->backupAmpduMaxTime);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x430);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x434);
	u2Tmp[0] = pBtCoexist->fBtcRead2Byte(pBtCoexist, 0x42a);
	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x456);
	FUNC1(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/0x%x/0x%x/0x%x", "0x430/0x434/0x42a/0x456", \
		u4Tmp[0], u4Tmp[1], u2Tmp[0], u1Tmp[0]);
	FUNC0(cliBuf);

	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x778);
	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x6cc);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x880);
	FUNC1(
		cliBuf, BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x778/0x6cc/0x880[29:25]", \
		u1Tmp[0], u4Tmp[0],  (u4Tmp[1]&0x3e000000) >> 25
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x948);
	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x67);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x764);
	u1Tmp[1] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x76e);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x948/ 0x67[5] / 0x764 / 0x76e", \
		u4Tmp[0], ((u1Tmp[0]&0x20) >> 5), (u4Tmp[1] & 0xffff), u1Tmp[1]
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x92c);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x930);
	u4Tmp[2] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x944);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x92c[1:0]/ 0x930[7:0]/0x944[1:0]", \
		u4Tmp[0]&0x3, u4Tmp[1]&0xff, u4Tmp[2]&0x3
	);
	FUNC0(cliBuf);

	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x39);
	u1Tmp[1] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x40);
	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
	u1Tmp[2] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x64);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x38[11]/0x40/0x4c[24:23]/0x64[0]", \
		((u1Tmp[0] & 0x8)>>3),
		u1Tmp[1],
		((u4Tmp[0]&0x01800000)>>23),
		u1Tmp[2]&0x1
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x550);
	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x522);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x", "0x550(bcn ctrl)/0x522", \
		u4Tmp[0], u1Tmp[0]
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0xc50);
	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x49c);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x", "0xc50(dig)/0x49c(null-drop)", \
		u4Tmp[0]&0xff, u1Tmp[0]
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0xda0);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0xda4);
	u4Tmp[2] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0xda8);
	u4Tmp[3] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0xcf0);

	u1Tmp[0] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0xa5b);
	u1Tmp[1] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0xa5c);

	faOfdm =
		((u4Tmp[0]&0xffff0000) >> 16) +
		((u4Tmp[1]&0xffff0000) >> 16) +
		(u4Tmp[1] & 0xffff) +  (u4Tmp[2] & 0xffff) + \
		((u4Tmp[3]&0xffff0000) >> 16) + (u4Tmp[3] & 0xffff);
	faCck = (u1Tmp[0] << 8) + u1Tmp[1];

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "OFDM-CCA/OFDM-FA/CCK-FA", \
		u4Tmp[0]&0xffff, faOfdm, faCck
	);
	FUNC0(cliBuf);


	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d/ %d/ %d", "CRC_OK CCK/11g/11n/11n-Agg", \
		pCoexSta->nCRCOK_CCK,
		pCoexSta->nCRCOK_11g,
		pCoexSta->nCRCOK_11n,
		pCoexSta->nCRCOK_11nAgg
	);
	FUNC0(cliBuf);

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d/ %d/ %d", "CRC_Err CCK/11g/11n/11n-Agg", \
		pCoexSta->nCRCErr_CCK,
		pCoexSta->nCRCErr_11g,
		pCoexSta->nCRCErr_11n,
		pCoexSta->nCRCErr_11nAgg
	);
	FUNC0(cliBuf);

	u4Tmp[0] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x6c0);
	u4Tmp[1] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x6c4);
	u4Tmp[2] = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x6c8);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x6c0/0x6c4/0x6c8(coexTable)", \
		u4Tmp[0], u4Tmp[1], u4Tmp[2]);
	FUNC0(cliBuf);

	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d", "0x770(high-pri rx/tx)", \
		pCoexSta->highPriorityRx, pCoexSta->highPriorityTx
	);
	FUNC0(cliBuf);
	FUNC1(
		cliBuf,
		BT_TMP_BUF_SIZE,
		"\r\n %-35s = %d/ %d", "0x774(low-pri rx/tx)", \
		pCoexSta->lowPriorityRx, pCoexSta->lowPriorityTx
	);
	FUNC0(cliBuf);

	pBtCoexist->fBtcDispDbgMsg(pBtCoexist, BTC_DBG_DISP_COEX_STATISTICS);
}