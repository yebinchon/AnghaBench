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
struct btc_coexist {int dummy; } ;
struct TYPE_2__ {scalar_t__ pop_event_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int,int,int,int) ; 
 TYPE_1__* coex_sta ; 

__attribute__((used)) static void FUNC6(struct btc_coexist *btcoexist)
{
	/* force to reset coex mechanism*/
	FUNC0(btcoexist, NORMAL_EXEC, 0);
	FUNC3(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

	FUNC4(btcoexist, FORCE_EXEC, false, 1);
	FUNC2(btcoexist, FORCE_EXEC, 6);
	FUNC1(btcoexist, FORCE_EXEC, 0);

	FUNC5(btcoexist, false, false, false, false);

	coex_sta->pop_event_cnt = 0;
}