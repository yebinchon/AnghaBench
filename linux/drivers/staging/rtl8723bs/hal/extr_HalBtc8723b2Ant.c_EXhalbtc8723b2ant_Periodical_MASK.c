#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {scalar_t__ bAutoTdmaAdjust; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* fBtcGet ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE ; 
 int /*<<< orphan*/  BTC_GET_U4_BT_PATCH_VER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_FW_VER ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  BTC_MSG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GLCoexVer8723b2Ant ; 
 int /*<<< orphan*/  GLCoexVerDate8723b2Ant ; 
 int /*<<< orphan*/  INTF_INIT ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_4__* pCoexDm ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(PBTC_COEXIST pBtCoexist)
{
	static u8 disVerInfoCnt;
	u32 fwVer = 0, btPatchVer = 0;

	FUNC0(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], ==========================Periodical ===========================\n"));

	if (disVerInfoCnt <= 5) {
		disVerInfoCnt += 1;
		FUNC0(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ****************************************************************\n"));
		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_BT_PATCH_VER, &btPatchVer);
		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);
		FUNC0(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\n", \
			GLCoexVerDate8723b2Ant, GLCoexVer8723b2Ant, fwVer, btPatchVer, btPatchVer));
		FUNC0(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ****************************************************************\n"));
	}

	if (
		FUNC1(pBtCoexist) ||
		pCoexDm->bAutoTdmaAdjust
	)
		FUNC2(pBtCoexist);
}