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
struct fc_lport {TYPE_1__* host; } ;
struct fc_fcp_internal {int max_can_queue; scalar_t__ last_can_queue_ramp_down_time; scalar_t__ last_can_queue_ramp_up_time; } ;
struct TYPE_2__ {int can_queue; int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ FC_CAN_QUEUE_PERIOD ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct fc_fcp_internal* FUNC0 (struct fc_lport*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct fc_lport *lport)
{
	struct fc_fcp_internal *si = FUNC0(lport);
	unsigned long flags;
	int can_queue;

	FUNC2(lport->host->host_lock, flags);

	if (si->last_can_queue_ramp_up_time &&
	    (FUNC4(jiffies, si->last_can_queue_ramp_up_time +
			 FC_CAN_QUEUE_PERIOD)))
		goto unlock;

	if (FUNC4(jiffies, si->last_can_queue_ramp_down_time +
			FC_CAN_QUEUE_PERIOD))
		goto unlock;

	si->last_can_queue_ramp_up_time = jiffies;

	can_queue = lport->host->can_queue << 1;
	if (can_queue >= si->max_can_queue) {
		can_queue = si->max_can_queue;
		si->last_can_queue_ramp_down_time = 0;
	}
	lport->host->can_queue = can_queue;
	FUNC1(KERN_ERR, lport->host, "libfc: increased "
		     "can_queue to %d.\n", can_queue);

unlock:
	FUNC3(lport->host->host_lock, flags);
}