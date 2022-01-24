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
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC5(PBTC_COEXIST pBtCoexist)
{
	/*  force to reset coex mechanism */

	FUNC2(pBtCoexist, FORCE_EXEC, false, 1);
	FUNC1(pBtCoexist, FORCE_EXEC, 6);
	FUNC0(pBtCoexist, FORCE_EXEC, 0);

	FUNC3(pBtCoexist, false, false, false, false);
	FUNC4(pBtCoexist, false, false, false, 0x18);
}