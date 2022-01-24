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
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_2__ core; } ;
struct domain_device {int /*<<< orphan*/  state; TYPE_1__* port; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* lldd_dev_gone ) (struct domain_device*) ;} ;
struct TYPE_4__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_DEV_FOUND ; 
 int /*<<< orphan*/  FUNC0 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct domain_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sas_internal* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct domain_device *dev)
{
	struct sas_ha_struct *sas_ha = dev->port->ha;
	struct Scsi_Host *shost = sas_ha->core.shost;
	struct sas_internal *i = FUNC3(shost->transportt);

	if (!i->dft->lldd_dev_gone)
		return;

	if (FUNC2(SAS_DEV_FOUND, &dev->state)) {
		i->dft->lldd_dev_gone(dev);
		FUNC0(dev);
	}
}