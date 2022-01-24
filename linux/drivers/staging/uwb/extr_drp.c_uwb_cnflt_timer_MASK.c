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
struct uwb_cnflt_alien {int /*<<< orphan*/  cnflt_update_work; TYPE_1__* rc; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsv_workq; } ;

/* Variables and functions */
 struct uwb_cnflt_alien* cnflt ; 
 struct uwb_cnflt_alien* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct uwb_cnflt_alien *cnflt = FUNC0(cnflt, t, timer);

	FUNC1(cnflt->rc->rsv_workq, &cnflt->cnflt_update_work);
}