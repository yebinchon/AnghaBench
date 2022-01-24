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
 int /*<<< orphan*/  BTC_ANT_PATH_PTA ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct btc_coexist *btcoexist)
{
	FUNC0(btcoexist, FORCE_EXEC, 0);
	FUNC1(btcoexist, FORCE_EXEC, false, 8);
	FUNC2(btcoexist, BTC_ANT_PATH_PTA,
				     FORCE_EXEC, false, false);
}