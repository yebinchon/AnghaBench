#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* hw_block_size; scalar_t__ hw_queue_depth; void* hw_max_sectors; } ;
struct se_device {TYPE_2__ dev_attrib; int /*<<< orphan*/  t10_wwn; } ;
struct scsi_device {scalar_t__ type; void* sector_size; scalar_t__ queue_depth; TYPE_1__* host; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct pscsi_dev_virt {struct scsi_device* pdv_sd; } ;
struct TYPE_3__ {int max_sectors; } ;

/* Variables and functions */
 scalar_t__ PSCSI_DEFAULT_QUEUEDEPTH ; 
 struct pscsi_dev_virt* FUNC0 (struct se_device*) ; 
 scalar_t__ TYPE_TAPE ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct se_device*,struct scsi_device*) ; 
 int FUNC7 (struct request_queue*) ; 

__attribute__((used)) static int FUNC8(struct se_device *dev,
		struct scsi_device *sd)
{
	struct pscsi_dev_virt *pdv = FUNC0(dev);
	struct request_queue *q = sd->request_queue;

	pdv->pdv_sd = sd;

	if (!sd->queue_depth) {
		sd->queue_depth = PSCSI_DEFAULT_QUEUEDEPTH;

		FUNC2("Set broken SCSI Device %d:%d:%llu"
			" queue_depth to %d\n", sd->channel, sd->id,
				sd->lun, sd->queue_depth);
	}

	dev->dev_attrib.hw_block_size =
		FUNC1((int)sd->sector_size, 512);
	dev->dev_attrib.hw_max_sectors =
		FUNC1(sd->host->max_sectors, FUNC7(q));
	dev->dev_attrib.hw_queue_depth = sd->queue_depth;

	/*
	 * Setup our standard INQUIRY info into se_dev->t10_wwn
	 */
	FUNC5(sd, &dev->t10_wwn);

	/*
	 * Locate VPD WWN Information used for various purposes within
	 * the Storage Engine.
	 */
	if (!FUNC4(sd, &dev->t10_wwn)) {
		/*
		 * If VPD Unit Serial returned GOOD status, try
		 * VPD Device Identification page (0x83).
		 */
		FUNC3(sd, &dev->t10_wwn);
	}

	/*
	 * For TYPE_TAPE, attempt to determine blocksize with MODE_SENSE.
	 */
	if (sd->type == TYPE_TAPE) {
		FUNC6(dev, sd);
		dev->dev_attrib.hw_block_size = sd->sector_size;
	}
	return 0;
}