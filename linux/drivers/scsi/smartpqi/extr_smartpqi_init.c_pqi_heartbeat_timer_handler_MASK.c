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
typedef  scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct pqi_ctrl_info {int previous_num_interrupts; scalar_t__ previous_heartbeat_count; int /*<<< orphan*/  heartbeat_timer; TYPE_1__* pci_dev; int /*<<< orphan*/  num_interrupts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PQI_HEARTBEAT_TIMER_INTERVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct pqi_ctrl_info* ctrl_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct pqi_ctrl_info* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heartbeat_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC5 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	int num_interrupts;
	u32 heartbeat_count;
	struct pqi_ctrl_info *ctrl_info = FUNC2(ctrl_info, t,
						     heartbeat_timer);

	FUNC4(ctrl_info);
	if (FUNC5(ctrl_info))
		return;

	num_interrupts = FUNC0(&ctrl_info->num_interrupts);
	heartbeat_count = FUNC6(ctrl_info);

	if (num_interrupts == ctrl_info->previous_num_interrupts) {
		if (heartbeat_count == ctrl_info->previous_heartbeat_count) {
			FUNC1(&ctrl_info->pci_dev->dev,
				"no heartbeat detected - last heartbeat count: %u\n",
				heartbeat_count);
			FUNC7(ctrl_info);
			return;
		}
	} else {
		ctrl_info->previous_num_interrupts = num_interrupts;
	}

	ctrl_info->previous_heartbeat_count = heartbeat_count;
	FUNC3(&ctrl_info->heartbeat_timer,
		jiffies + PQI_HEARTBEAT_TIMER_INTERVAL);
}