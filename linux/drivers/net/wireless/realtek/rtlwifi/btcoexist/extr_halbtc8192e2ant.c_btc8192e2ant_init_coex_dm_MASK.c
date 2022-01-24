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
struct btc_coexist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct btc_coexist *btcoexist)
{
	/* force to reset coex mechanism */

	FUNC3(btcoexist, FORCE_EXEC, false, 1);
	FUNC2(btcoexist, FORCE_EXEC, 6);
	FUNC1(btcoexist, FORCE_EXEC, 0);

	FUNC0(btcoexist, FORCE_EXEC, 0);
	FUNC6(btcoexist, FORCE_EXEC, 2);

	FUNC4(btcoexist, false, false, false, false);
	FUNC5(btcoexist, false, false, false, 0x18);
}