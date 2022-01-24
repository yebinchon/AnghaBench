#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_target {int /*<<< orphan*/  reap_ref; int /*<<< orphan*/  devices; int /*<<< orphan*/  scsi_level; } ;
struct TYPE_5__ {int /*<<< orphan*/ * class; int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct scsi_device {int lun_in_cdb; int /*<<< orphan*/  siblings; int /*<<< orphan*/  same_target_siblings; TYPE_1__ sdev_gendev; int /*<<< orphan*/  scsi_level; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; struct Scsi_Host* host; TYPE_1__ sdev_dev; struct scsi_target* sdev_target; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  __devices; int /*<<< orphan*/  no_scsi2_lun_in_cdb; int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_2 ; 
 int /*<<< orphan*/  SCSI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_bus_type ; 
 int /*<<< orphan*/  scsi_dev_type ; 
 int /*<<< orphan*/  sdev_class ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(struct scsi_device *sdev)
{
	unsigned long flags;
	struct Scsi_Host *shost = sdev->host;
	struct scsi_target  *starget = sdev->sdev_target;

	FUNC1(&sdev->sdev_gendev);
	sdev->sdev_gendev.bus = &scsi_bus_type;
	sdev->sdev_gendev.type = &scsi_dev_type;
	FUNC0(&sdev->sdev_gendev, "%d:%d:%d:%llu",
		     sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);

	FUNC1(&sdev->sdev_dev);
	sdev->sdev_dev.parent = FUNC2(&sdev->sdev_gendev);
	sdev->sdev_dev.class = &sdev_class;
	FUNC0(&sdev->sdev_dev, "%d:%d:%d:%llu",
		     sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);
	/*
	 * Get a default scsi_level from the target (derived from sibling
	 * devices).  This is the best we can do for guessing how to set
	 * sdev->lun_in_cdb for the initial INQUIRY command.  For LUN 0 the
	 * setting doesn't matter, because all the bits are zero anyway.
	 * But it does matter for higher LUNs.
	 */
	sdev->scsi_level = starget->scsi_level;
	if (sdev->scsi_level <= SCSI_2 &&
			sdev->scsi_level != SCSI_UNKNOWN &&
			!shost->no_scsi2_lun_in_cdb)
		sdev->lun_in_cdb = 1;

	FUNC7(&sdev->sdev_gendev);
	FUNC5(shost->host_lock, flags);
	FUNC4(&sdev->same_target_siblings, &starget->devices);
	FUNC4(&sdev->siblings, &shost->__devices);
	FUNC6(shost->host_lock, flags);
	/*
	 * device can now only be removed via __scsi_remove_device() so hold
	 * the target.  Target will be held in CREATED state until something
	 * beneath it becomes visible (in which case it moves to RUNNING)
	 */
	FUNC3(&starget->reap_ref);
}