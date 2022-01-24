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
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC6(PBTC_COEXIST pBtCoexist)
{
	/*  fw all off */
	FUNC3(pBtCoexist, NORMAL_EXEC, false, 1);
	FUNC2(pBtCoexist, NORMAL_EXEC, 6);
	FUNC1(pBtCoexist, NORMAL_EXEC, 0);

	/*  sw all off */
	FUNC4(pBtCoexist, false, false, false, false);
	FUNC5(pBtCoexist, false, false, false, 0x18);

	/*  hw all off */
	/* pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0); */
	FUNC0(pBtCoexist, NORMAL_EXEC, 0);
}