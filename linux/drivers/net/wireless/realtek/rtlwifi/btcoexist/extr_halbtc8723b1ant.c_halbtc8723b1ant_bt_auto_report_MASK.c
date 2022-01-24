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
struct TYPE_2__ {int cur_bt_auto_report; int pre_bt_auto_report; } ;

/* Variables and functions */
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int) ; 

__attribute__((used)) static void FUNC1(struct btc_coexist *btcoexist,
					   bool force_exec,
					   bool enable_auto_report)
{
	coex_dm->cur_bt_auto_report = enable_auto_report;

	if (!force_exec) {
		if (coex_dm->pre_bt_auto_report == coex_dm->cur_bt_auto_report)
			return;
	}
	FUNC0(btcoexist,
					   coex_dm->cur_bt_auto_report);

	coex_dm->pre_bt_auto_report = coex_dm->cur_bt_auto_report;
}