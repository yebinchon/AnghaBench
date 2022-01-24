#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_12__ {int bForceLpsOn; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* fBtcSet ) (TYPE_1__*,int /*<<< orphan*/ ,int*) ;} ;
typedef  TYPE_1__* PBTC_COEXIST ;

/* Variables and functions */
#define  BTC_PS_LPS_OFF 130 
#define  BTC_PS_LPS_ON 129 
#define  BTC_PS_WIFI_NATIVE 128 
 int /*<<< orphan*/  BTC_SET_ACT_DISABLE_LOW_POWER ; 
 int /*<<< orphan*/  BTC_SET_ACT_ENTER_LPS ; 
 int /*<<< orphan*/  BTC_SET_ACT_LEAVE_LPS ; 
 int /*<<< orphan*/  BTC_SET_ACT_NORMAL_LPS ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_7__* pCoexSta ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC7(
	PBTC_COEXIST pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
)
{
	bool bLowPwrDisable = false;

	switch (psType) {
	case BTC_PS_WIFI_NATIVE:
		/*  recover to original 32k low power setting */
		bLowPwrDisable = false;
		pBtCoexist->fBtcSet(
			pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable
		);
		pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_NORMAL_LPS, NULL);
		pCoexSta->bForceLpsOn = false;
		break;
	case BTC_PS_LPS_ON:
		FUNC1(pBtCoexist, true);
		FUNC0(pBtCoexist, NORMAL_EXEC, lpsVal, rpwmVal);
		/*  when coex force to enter LPS, do not enter 32k low power. */
		bLowPwrDisable = true;
		pBtCoexist->fBtcSet(
			pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable
		);
		/*  power save must executed before psTdma. */
		pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_ENTER_LPS, NULL);
		pCoexSta->bForceLpsOn = true;
		break;
	case BTC_PS_LPS_OFF:
		FUNC1(pBtCoexist, false);
		pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_LEAVE_LPS, NULL);
		pCoexSta->bForceLpsOn = false;
		break;
	default:
		break;
	}
}