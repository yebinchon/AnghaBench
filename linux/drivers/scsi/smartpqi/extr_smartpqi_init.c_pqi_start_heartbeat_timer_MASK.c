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
struct TYPE_2__ {scalar_t__ expires; } ;
struct pqi_ctrl_info {TYPE_1__ heartbeat_timer; int /*<<< orphan*/  previous_heartbeat_count; int /*<<< orphan*/  num_interrupts; int /*<<< orphan*/  previous_num_interrupts; int /*<<< orphan*/  heartbeat_counter; } ;

/* Variables and functions */
 scalar_t__ PQI_HEARTBEAT_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC3(struct pqi_ctrl_info *ctrl_info)
{
	if (!ctrl_info->heartbeat_counter)
		return;

	ctrl_info->previous_num_interrupts =
		FUNC1(&ctrl_info->num_interrupts);
	ctrl_info->previous_heartbeat_count =
		FUNC2(ctrl_info);

	ctrl_info->heartbeat_timer.expires =
		jiffies + PQI_HEARTBEAT_TIMER_INTERVAL;
	FUNC0(&ctrl_info->heartbeat_timer);
}