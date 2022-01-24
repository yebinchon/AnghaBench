#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct vscsifrnt_info {int host_active; struct Scsi_Host* host; int /*<<< orphan*/  shadow_lock; int /*<<< orphan*/  wq_pause; int /*<<< orphan*/  wq_sync; int /*<<< orphan*/  shadow_free_bitmap; struct xenbus_device* dev; } ;
struct Scsi_Host {int host_no; int max_sectors; int sg_tablesize; int /*<<< orphan*/  max_cmd_len; int /*<<< orphan*/  max_lun; scalar_t__ max_channel; int /*<<< orphan*/  max_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  VSCSIIF_MAX_COMMAND_SIZE ; 
 int /*<<< orphan*/  VSCSIIF_MAX_LUN ; 
 int /*<<< orphan*/  VSCSIIF_MAX_REQS ; 
 int /*<<< orphan*/  VSCSIIF_MAX_TARGET ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct vscsifrnt_info*) ; 
 int FUNC8 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  scsifront_sht ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xenbus_device*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct xenbus_device *dev,
			   const struct xenbus_device_id *id)
{
	struct vscsifrnt_info *info;
	struct Scsi_Host *host;
	int err = -ENOMEM;
	char name[TASK_COMM_LEN];

	host = FUNC5(&scsifront_sht, sizeof(*info));
	if (!host) {
		FUNC11(dev, err, "fail to allocate scsi host");
		return err;
	}
	info = (struct vscsifrnt_info *)host->hostdata;

	FUNC2(&dev->dev, info);
	info->dev = dev;

	FUNC0(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);

	err = FUNC8(info);
	if (err) {
		FUNC6(host);
		return err;
	}

	FUNC3(&info->wq_sync);
	FUNC3(&info->wq_pause);
	FUNC10(&info->shadow_lock);

	FUNC9(name, TASK_COMM_LEN, "vscsiif.%d", host->host_no);

	host->max_id      = VSCSIIF_MAX_TARGET;
	host->max_channel = 0;
	host->max_lun     = VSCSIIF_MAX_LUN;
	host->max_sectors = (host->sg_tablesize - 1) * PAGE_SIZE / 512;
	host->max_cmd_len = VSCSIIF_MAX_COMMAND_SIZE;

	err = FUNC4(host, &dev->dev);
	if (err) {
		FUNC1(&dev->dev, "fail to add scsi host %d\n", err);
		goto free_sring;
	}
	info->host = host;
	info->host_active = 1;

	FUNC12(dev, XenbusStateInitialised);

	return 0;

free_sring:
	FUNC7(info);
	FUNC6(host);
	return err;
}