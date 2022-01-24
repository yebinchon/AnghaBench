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
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int) ; 

__attribute__((used)) static void FUNC1(struct btc_coexist *btcoexist)
{
	/* sw all off */
	FUNC0(btcoexist, false);

	coex_sta->pop_event_cnt = 0;
}