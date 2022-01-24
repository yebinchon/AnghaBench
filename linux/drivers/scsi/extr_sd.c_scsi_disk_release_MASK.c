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
struct scsi_disk {TYPE_1__* device; int /*<<< orphan*/  index; struct gendisk* disk; } ;
struct request_queue {int dummy; } ;
struct gendisk {int /*<<< orphan*/ * private_data; struct request_queue* queue; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  sd_index_ida ; 
 struct scsi_disk* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct scsi_disk *sdkp = FUNC6(dev);
	struct gendisk *disk = sdkp->disk;
	struct request_queue *q = disk->queue;

	FUNC2(&sd_index_ida, sdkp->index);

	/*
	 * Wait until all requests that are in progress have completed.
	 * This is necessary to avoid that e.g. scsi_end_request() crashes
	 * due to clearing the disk->private_data pointer. Wait from inside
	 * scsi_disk_release() instead of from sd_release() to avoid that
	 * freezing and unfreezing the request queue affects user space I/O
	 * in case multiple processes open a /dev/sd... node concurrently.
	 */
	FUNC0(q);
	FUNC1(q);

	disk->private_data = NULL;
	FUNC5(disk);
	FUNC4(&sdkp->device->sdev_gendev);

	FUNC3(sdkp);
}