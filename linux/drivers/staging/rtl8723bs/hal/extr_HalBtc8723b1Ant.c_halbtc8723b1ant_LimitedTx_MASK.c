#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(
	PBTC_COEXIST pBtCoexist,
	bool bForceExec,
	u8 raMaskType,
	u8 arfrType,
	u8 retryLimitType,
	u8 ampduTimeType
)
{
	switch (raMaskType) {
	case 0:	/*  normal mode */
		FUNC3(pBtCoexist, bForceExec, 0x0);
		break;
	case 1:	/*  disable cck 1/2 */
		FUNC3(pBtCoexist, bForceExec, 0x00000003);
		break;
	case 2:	/*  disable cck 1/2/5.5, ofdm 6/9/12/18/24, mcs 0/1/2/3/4 */
		FUNC3(pBtCoexist, bForceExec, 0x0001f1f7);
		break;
	default:
		break;
	}

	FUNC1(pBtCoexist, bForceExec, arfrType);
	FUNC2(pBtCoexist, bForceExec, retryLimitType);
	FUNC0(pBtCoexist, bForceExec, ampduTimeType);
}