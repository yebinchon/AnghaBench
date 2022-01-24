#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * class; struct device* parent; } ;
struct scsi_disk {int index; int media_present; int first_scan; scalar_t__ opal_dev; scalar_t__ security; scalar_t__ capacity; int /*<<< orphan*/  max_medium_access_timeouts; scalar_t__ ATO; scalar_t__ RCD; scalar_t__ WCE; scalar_t__ cache_override; scalar_t__ write_prot; struct scsi_device* device; int /*<<< orphan*/ * driver; TYPE_1__ dev; int /*<<< orphan*/  openers; struct gendisk* disk; } ;
struct scsi_device {scalar_t__ type; int sector_size; scalar_t__ removable; TYPE_4__* request_queue; int /*<<< orphan*/  ioerr_cnt; } ;
struct gendisk {int first_minor; int event_flags; int /*<<< orphan*/  events; int /*<<< orphan*/  flags; TYPE_4__* queue; int /*<<< orphan*/ ** private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; int /*<<< orphan*/  disk_name; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rq_timeout; } ;

/* Variables and functions */
 int DISK_EVENT_FLAG_POLL ; 
 int DISK_EVENT_FLAG_UEVENT ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GENHD_FL_REMOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_MAX_MEDIUM_TIMEOUTS ; 
 int /*<<< orphan*/  SD_MINORS ; 
 int /*<<< orphan*/  SD_MOD_TIMEOUT ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_MOD ; 
 scalar_t__ TYPE_RBC ; 
 scalar_t__ TYPE_ZBC ; 
 struct gendisk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct gendisk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_disk*) ; 
 struct scsi_disk* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_disk*) ; 
 int /*<<< orphan*/  sd_disk_class ; 
 int /*<<< orphan*/  sd_fops ; 
 int FUNC21 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_index_ida ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct scsi_disk*,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (struct gendisk*) ; 
 int /*<<< orphan*/  sd_sec_submit ; 
 int /*<<< orphan*/  sd_template ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 
 struct scsi_device* FUNC26 (struct device*) ; 

__attribute__((used)) static int FUNC27(struct device *dev)
{
	struct scsi_device *sdp = FUNC26(dev);
	struct scsi_disk *sdkp;
	struct gendisk *gd;
	int index;
	int error;

	FUNC18(sdp);
	error = -ENODEV;
	if (sdp->type != TYPE_DISK &&
	    sdp->type != TYPE_ZBC &&
	    sdp->type != TYPE_MOD &&
	    sdp->type != TYPE_RBC)
		goto out;

#ifndef CONFIG_BLK_DEV_ZONED
	if (sdp->type == TYPE_ZBC)
		goto out;
#endif
	FUNC0(3, FUNC25(KERN_INFO, sdp,
					"sd_probe\n"));

	error = -ENOMEM;
	sdkp = FUNC16(sizeof(*sdkp), GFP_KERNEL);
	if (!sdkp)
		goto out;

	gd = FUNC1(SD_MINORS);
	if (!gd)
		goto out_free;

	index = FUNC12(&sd_index_ida, GFP_KERNEL);
	if (index < 0) {
		FUNC25(KERN_WARNING, sdp, "sd_probe: memory exhausted.\n");
		goto out_put;
	}

	error = FUNC21("sd", index, gd->disk_name, DISK_NAME_LEN);
	if (error) {
		FUNC25(KERN_WARNING, sdp, "SCSI disk (sd) name length exceeded.\n");
		goto out_free_index;
	}

	sdkp->device = sdp;
	sdkp->driver = &sd_template;
	sdkp->disk = gd;
	sdkp->index = index;
	FUNC2(&sdkp->openers, 0);
	FUNC2(&sdkp->device->ioerr_cnt, 0);

	if (!sdp->request_queue->rq_timeout) {
		if (sdp->type != TYPE_MOD)
			FUNC4(sdp->request_queue, SD_TIMEOUT);
		else
			FUNC4(sdp->request_queue,
					     SD_MOD_TIMEOUT);
	}

	FUNC10(&sdkp->dev);
	sdkp->dev.parent = dev;
	sdkp->dev.class = &sd_disk_class;
	FUNC7(&sdkp->dev, "%s", FUNC5(dev));

	error = FUNC8(&sdkp->dev);
	if (error)
		goto out_free_index;

	FUNC11(dev);
	FUNC6(dev, sdkp);

	gd->major = FUNC22((index & 0xf0) >> 4);
	gd->first_minor = ((index & 0xf) << 4) | (index & 0xfff00);

	gd->fops = &sd_fops;
	gd->private_data = &sdkp->driver;
	gd->queue = sdkp->device->request_queue;

	/* defaults, until the device tells us otherwise */
	sdp->sector_size = 512;
	sdkp->capacity = 0;
	sdkp->media_present = 1;
	sdkp->write_prot = 0;
	sdkp->cache_override = 0;
	sdkp->WCE = 0;
	sdkp->RCD = 0;
	sdkp->ATO = 0;
	sdkp->first_scan = 1;
	sdkp->max_medium_access_timeouts = SD_MAX_MEDIUM_TIMEOUTS;

	FUNC24(gd);

	gd->flags = GENHD_FL_EXT_DEVT;
	if (sdp->removable) {
		gd->flags |= GENHD_FL_REMOVABLE;
		gd->events |= DISK_EVENT_MEDIA_CHANGE;
		gd->event_flags = DISK_EVENT_FLAG_POLL | DISK_EVENT_FLAG_UEVENT;
	}

	FUNC3(sdp->request_queue, dev);
	FUNC9(dev, gd, NULL);
	if (sdkp->capacity)
		FUNC20(sdkp);

	FUNC24(gd);

	if (sdkp->security) {
		sdkp->opal_dev = FUNC14(sdp, &sd_sec_submit);
		if (sdkp->opal_dev)
			FUNC23(KERN_NOTICE, sdkp, "supports TCG Opal\n");
	}

	FUNC23(KERN_NOTICE, sdkp, "Attached SCSI %sdisk\n",
		  sdp->removable ? "removable " : "");
	FUNC19(sdp);

	return 0;

 out_free_index:
	FUNC13(&sd_index_ida, index);
 out_put:
	FUNC17(gd);
 out_free:
	FUNC15(sdkp);
 out:
	FUNC19(sdp);
	return error;
}