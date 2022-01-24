#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct megasas_instance {int /*<<< orphan*/  work_init; TYPE_2__* host; TYPE_1__* pdev; int /*<<< orphan*/  sriov_heartbeat_timer; TYPE_3__* hb_host_mem; } ;
struct TYPE_8__ {scalar_t__ fwCounter; scalar_t__ driverCounter; } ;
struct TYPE_7__ {TYPE_4__ HB; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MEGASAS_SRIOV_HEARTBEAT_INTERVAL_VF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct megasas_instance* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct megasas_instance* instance ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sriov_heartbeat_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct megasas_instance *instance =
		FUNC1(instance, t, sriov_heartbeat_timer);

	if (instance->hb_host_mem->HB.fwCounter !=
	    instance->hb_host_mem->HB.driverCounter) {
		instance->hb_host_mem->HB.driverCounter =
			instance->hb_host_mem->HB.fwCounter;
		FUNC2(&instance->sriov_heartbeat_timer,
			  jiffies + MEGASAS_SRIOV_HEARTBEAT_INTERVAL_VF);
	} else {
		FUNC0(&instance->pdev->dev, "SR-IOV: Heartbeat never "
		       "completed for scsi%d\n", instance->host->host_no);
		FUNC3(&instance->work_init);
	}
}