#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {TYPE_2__ core; int /*<<< orphan*/  lock; int /*<<< orphan*/  eh_wait_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  ap; } ;
struct domain_device {int /*<<< orphan*/  state; TYPE_1__ sata_dev; TYPE_3__* port; } ;
struct TYPE_6__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_DEV_EH_PENDING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC11(struct domain_device *dev)
{
	struct sas_ha_struct *ha = dev->port->ha;
	FUNC0(wait);

	if (FUNC2(dev)) {
		FUNC1(dev->sata_dev.ap);
		return;
	}
 retry:
	FUNC8(&ha->lock);

	while (FUNC10(SAS_DEV_EH_PENDING, &dev->state)) {
		FUNC5(&ha->eh_wait_q, &wait, TASK_UNINTERRUPTIBLE);
		FUNC9(&ha->lock);
		FUNC6();
		FUNC8(&ha->lock);
	}
	FUNC3(&ha->eh_wait_q, &wait);

	FUNC9(&ha->lock);

	/* make sure SCSI EH is complete */
	if (FUNC7(ha->core.shost)) {
		FUNC4(10);
		goto retry;
	}
}