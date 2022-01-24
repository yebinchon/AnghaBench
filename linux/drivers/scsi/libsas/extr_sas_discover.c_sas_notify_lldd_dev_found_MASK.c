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
struct sas_internal {TYPE_1__* dft; } ;
struct TYPE_6__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {int /*<<< orphan*/  dev; TYPE_3__ core; } ;
struct domain_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  state; int /*<<< orphan*/  sas_addr; TYPE_2__* port; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;
struct TYPE_4__ {int (* lldd_dev_found ) (struct domain_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_DEV_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct domain_device*) ; 
 struct sas_internal* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct domain_device *dev)
{
	int res = 0;
	struct sas_ha_struct *sas_ha = dev->port->ha;
	struct Scsi_Host *shost = sas_ha->core.shost;
	struct sas_internal *i = FUNC6(shost->transportt);

	if (!i->dft->lldd_dev_found)
		return 0;

	res = i->dft->lldd_dev_found(dev);
	if (res) {
		FUNC3("driver on host %s cannot handle device %llx, error:%d\n",
			FUNC1(sas_ha->dev),
			FUNC0(dev->sas_addr), res);
	}
	FUNC4(SAS_DEV_FOUND, &dev->state);
	FUNC2(&dev->kref);
	return res;
}