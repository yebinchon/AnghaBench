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
struct scsi_device {int allow_restart; int /*<<< orphan*/  lun; scalar_t__ tagged_supported; } ;
struct TYPE_6__ {int /*<<< orphan*/  ap; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; TYPE_3__ sata_dev; TYPE_2__* rphy; } ;
struct TYPE_4__ {scalar_t__ device_type; } ;
struct TYPE_5__ {TYPE_1__ identify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SAS_DEF_QD ; 
 scalar_t__ SAS_END_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*,int) ; 
 struct domain_device* FUNC7 (struct scsi_device*) ; 

int FUNC8(struct scsi_device *scsi_dev)
{
	struct domain_device *dev = FUNC7(scsi_dev);

	FUNC0(dev->rphy->identify.device_type != SAS_END_DEVICE);

	if (FUNC3(dev)) {
		FUNC2(scsi_dev, dev->sata_dev.ap);
		return 0;
	}

	FUNC5(scsi_dev);

	if (scsi_dev->tagged_supported) {
		FUNC6(scsi_dev, SAS_DEF_QD);
	} else {
		FUNC4("device %llx, LUN %llx doesn't support TCQ\n",
			  FUNC1(dev->sas_addr), scsi_dev->lun);
		FUNC6(scsi_dev, 1);
	}

	scsi_dev->allow_restart = 1;

	return 0;
}