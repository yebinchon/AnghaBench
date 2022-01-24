#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int nCoexTableType; } ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_TRACE ; 
 int /*<<< orphan*/  BTC_MSG_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 TYPE_1__* pCoexSta ; 

__attribute__((used)) static void FUNC2(
	PBTC_COEXIST pBtCoexist, bool bForceExec, u8 type
)
{
	FUNC0(
		BTC_MSG_ALGORITHM,
		ALGO_TRACE,
		("[BTCoex], ********** CoexTable(%d) **********\n", type)
	);

	pCoexSta->nCoexTableType = type;

	switch (type) {
	case 0:
		FUNC1(
			pBtCoexist, bForceExec, 0x55555555, 0x55555555, 0xffffff, 0x3
		);
		break;
	case 1:
		FUNC1(
			pBtCoexist, bForceExec, 0x55555555, 0x5a5a5a5a, 0xffffff, 0x3
		);
		break;
	case 2:
		FUNC1(
			pBtCoexist, bForceExec, 0x5a5a5a5a, 0x5a5a5a5a, 0xffffff, 0x3
		);
		break;
	case 3:
		FUNC1(
			pBtCoexist, bForceExec, 0xaaaa5555, 0xaaaa5a5a, 0xffffff, 0x3
		);
		break;
	case 4:
		FUNC1(
			pBtCoexist, bForceExec, 0x55555555, 0xaaaa5a5a, 0xffffff, 0x3
		);
		break;
	case 5:
		FUNC1(
			pBtCoexist, bForceExec, 0x5a5a5a5a, 0xaaaa5a5a, 0xffffff, 0x3
		);
		break;
	case 6:
		FUNC1(
			pBtCoexist, bForceExec, 0x55555555, 0xaaaaaaaa, 0xffffff, 0x3
		);
		break;
	case 7:
		FUNC1(
			pBtCoexist, bForceExec, 0xaaaaaaaa, 0xaaaaaaaa, 0xffffff, 0x3
		);
		break;
	default:
		break;
	}
}