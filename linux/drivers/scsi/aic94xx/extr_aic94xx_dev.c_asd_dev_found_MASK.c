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
struct domain_device {int dev_type; int /*<<< orphan*/  tproto; TYPE_2__* port; } ;
struct TYPE_6__ {int /*<<< orphan*/  ddb_lock; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
struct TYPE_5__ {TYPE_1__* ha; } ;
struct TYPE_4__ {struct asd_ha_struct* lldd_ha; } ;

/* Variables and functions */
#define  SAS_SATA_PM 129 
#define  SAS_SATA_PM_PORT 128 
 int FUNC0 (struct domain_device*) ; 
 int FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct domain_device*) ; 
 int FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct domain_device *dev)
{
	unsigned long flags;
	int res = 0;
	struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;

	FUNC4(&asd_ha->hw_prof.ddb_lock, flags);
	switch (dev->dev_type) {
	case SAS_SATA_PM:
		res = FUNC1(dev);
		break;
	case SAS_SATA_PM_PORT:
		res = FUNC2(dev);
		break;
	default:
		if (dev->tproto)
			res = FUNC3(dev);
		else
			res = FUNC0(dev);
	}
	FUNC5(&asd_ha->hw_prof.ddb_lock, flags);

	return res;
}