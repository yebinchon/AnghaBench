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
struct scsi_device {scalar_t__ type; int changed; int sector_size; int /*<<< orphan*/  sdev_gendev; int /*<<< orphan*/  request_queue; } ;
struct TYPE_2__ {int capacity; int /*<<< orphan*/  name; struct gendisk* disk; scalar_t__ mask; struct scsi_cd* handle; int /*<<< orphan*/ * ops; } ;
struct scsi_cd {int capacity; int media_present; int use; struct scsi_device* device; TYPE_1__ cdi; int /*<<< orphan*/ * driver; scalar_t__ readcd_cdda; scalar_t__ readcd_known; struct gendisk* disk; int /*<<< orphan*/  kref; } ;
struct gendisk {int first_minor; int flags; int events; int event_flags; int /*<<< orphan*/  queue; int /*<<< orphan*/ ** private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  major; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DISK_EVENT_EJECT_REQUEST ; 
 int DISK_EVENT_FLAG_POLL ; 
 int DISK_EVENT_FLAG_UEVENT ; 
 int DISK_EVENT_MEDIA_CHANGE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE ; 
 int GENHD_FL_CD ; 
 int GENHD_FL_REMOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_CDROM_MAJOR ; 
 int SR_DISKS ; 
 int /*<<< orphan*/  SR_TIMEOUT ; 
 scalar_t__ TYPE_ROM ; 
 scalar_t__ TYPE_WORM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct scsi_cd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct gendisk*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct scsi_cd* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sr_bdops ; 
 int /*<<< orphan*/  sr_dops ; 
 int /*<<< orphan*/  sr_index_bits ; 
 int /*<<< orphan*/  sr_index_lock ; 
 int /*<<< orphan*/  sr_template ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_cd*) ; 
 struct scsi_device* FUNC21 (struct device*) ; 

__attribute__((used)) static int FUNC22(struct device *dev)
{
	struct scsi_device *sdev = FUNC21(dev);
	struct gendisk *disk;
	struct scsi_cd *cd;
	int minor, error;

	FUNC13(sdev);
	error = -ENODEV;
	if (sdev->type != TYPE_ROM && sdev->type != TYPE_WORM)
		goto fail;

	error = -ENOMEM;
	cd = FUNC10(sizeof(*cd), GFP_KERNEL);
	if (!cd)
		goto fail;

	FUNC9(&cd->kref);

	disk = FUNC1(1);
	if (!disk)
		goto fail_free;

	FUNC17(&sr_index_lock);
	minor = FUNC6(sr_index_bits, SR_DISKS);
	if (minor == SR_DISKS) {
		FUNC18(&sr_index_lock);
		error = -EBUSY;
		goto fail_put;
	}
	FUNC0(minor, sr_index_bits);
	FUNC18(&sr_index_lock);

	disk->major = SCSI_CDROM_MAJOR;
	disk->first_minor = minor;
	FUNC19(disk->disk_name, "sr%d", minor);
	disk->fops = &sr_bdops;
	disk->flags = GENHD_FL_CD | GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE;
	disk->events = DISK_EVENT_MEDIA_CHANGE | DISK_EVENT_EJECT_REQUEST;
	disk->event_flags = DISK_EVENT_FLAG_POLL | DISK_EVENT_FLAG_UEVENT;

	FUNC3(sdev->request_queue, SR_TIMEOUT);

	cd->device = sdev;
	cd->disk = disk;
	cd->driver = &sr_template;
	cd->disk = disk;
	cd->capacity = 0x1fffff;
	cd->device->changed = 1;	/* force recheck CD type */
	cd->media_present = 1;
	cd->use = 1;
	cd->readcd_known = 0;
	cd->readcd_cdda = 0;

	cd->cdi.ops = &sr_dops;
	cd->cdi.handle = cd;
	cd->cdi.mask = 0;
	cd->cdi.capacity = 1;
	FUNC19(cd->cdi.name, "sr%d", minor);

	sdev->sector_size = 2048;	/* A guess, just in case */

	/* FIXME: need to handle a get_capabilities failure properly ?? */
	FUNC7(cd);
	FUNC20(cd);

	FUNC16(disk, cd->capacity);
	disk->private_data = &cd->driver;
	disk->queue = sdev->request_queue;
	cd->cdi.disk = disk;

	if (FUNC12(&cd->cdi))
		goto fail_put;

	/*
	 * Initialize block layer runtime PM stuffs before the
	 * periodic event checking request gets started in add_disk.
	 */
	FUNC2(sdev->request_queue, dev);

	FUNC4(dev, cd);
	disk->flags |= GENHD_FL_REMOVABLE;
	FUNC5(&sdev->sdev_gendev, disk, NULL);

	FUNC15(KERN_DEBUG, sdev,
		    "Attached scsi CD-ROM %s\n", cd->cdi.name);
	FUNC14(cd->device);

	return 0;

fail_put:
	FUNC11(disk);
fail_free:
	FUNC8(cd);
fail:
	FUNC14(sdev);
	return error;
}