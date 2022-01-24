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
struct scsi_disk {unsigned int capacity; unsigned int max_xfer_blocks; unsigned int opt_xfer_blocks; scalar_t__ first_scan; scalar_t__ media_present; TYPE_1__* disk; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ use_16_for_rw; } ;
struct TYPE_4__ {unsigned int max_dev_sectors; unsigned int max_sectors; unsigned int max_hw_sectors; int /*<<< orphan*/  io_opt; } ;
struct request_queue {TYPE_2__ limits; } ;
struct gendisk {int dummy; } ;
typedef  unsigned int sector_t ;
struct TYPE_3__ {struct request_queue* queue; } ;

/* Variables and functions */
 scalar_t__ BLK_DEF_MAX_SECTORS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUF_SIZE ; 
 unsigned int SD_DEF_XFER_BLOCKS ; 
 unsigned int SD_MAX_XFER_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,unsigned int) ; 
 unsigned int FUNC6 (struct scsi_device*,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_device*) ; 
 scalar_t__ FUNC11 (struct scsi_device*) ; 
 struct scsi_disk* FUNC12 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_disk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC22 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC23 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC24 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC25 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC26 (struct scsi_disk*) ; 
 scalar_t__ FUNC27 (struct scsi_disk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC29 (struct gendisk*,unsigned int) ; 

__attribute__((used)) static int FUNC30(struct gendisk *disk)
{
	struct scsi_disk *sdkp = FUNC12(disk);
	struct scsi_device *sdp = sdkp->device;
	struct request_queue *q = sdkp->disk->queue;
	sector_t old_capacity = sdkp->capacity;
	unsigned char *buffer;
	unsigned int dev_max, rw_max;

	FUNC0(3, FUNC15(KERN_INFO, sdkp,
				      "sd_revalidate_disk\n"));

	/*
	 * If the device is offline, don't try and read capacity or any
	 * of the other niceties.
	 */
	if (!FUNC10(sdp))
		goto out;

	buffer = FUNC4(SD_BUF_SIZE, GFP_KERNEL);
	if (!buffer) {
		FUNC15(KERN_WARNING, sdkp, "sd_revalidate_disk: Memory "
			  "allocation failure.\n");
		goto out;
	}

	FUNC26(sdkp);

	/*
	 * Without media there is no reason to ask; moreover, some devices
	 * react badly if we do.
	 */
	if (sdkp->media_present) {
		FUNC21(sdkp, buffer);

		/*
		 * set the default to rotational.  All non-rotational devices
		 * support the block characteristics VPD page, which will
		 * cause this to be updated correctly and any device which
		 * doesn't support it should be treated as rotational.
		 */
		FUNC1(QUEUE_FLAG_NONROT, q);
		FUNC2(QUEUE_FLAG_ADD_RANDOM, q);

		if (FUNC11(sdp)) {
			FUNC19(sdkp);
			FUNC18(sdkp);
			FUNC17(sdkp);
			FUNC28(sdkp, buffer);
		}

		FUNC14(sdkp, old_capacity);

		FUNC23(sdkp, buffer);
		FUNC20(sdkp, buffer);
		FUNC16(sdkp, buffer);
		FUNC24(sdkp, buffer);
		FUNC22(sdkp, buffer);
	}

	/*
	 * We now have all cache related info, determine how we deal
	 * with flush requests.
	 */
	FUNC25(sdkp);

	/* Initial block count limit based on CDB TRANSFER LENGTH field size. */
	dev_max = sdp->use_16_for_rw ? SD_MAX_XFER_BLOCKS : SD_DEF_XFER_BLOCKS;

	/* Some devices report a maximum block count for READ/WRITE requests. */
	dev_max = FUNC8(dev_max, sdkp->max_xfer_blocks);
	q->limits.max_dev_sectors = FUNC6(sdp, dev_max);

	if (FUNC27(sdkp, dev_max)) {
		q->limits.io_opt = FUNC5(sdp, sdkp->opt_xfer_blocks);
		rw_max = FUNC6(sdp, sdkp->opt_xfer_blocks);
	} else
		rw_max = FUNC8(FUNC6(sdp, dev_max),
				      (sector_t)BLK_DEF_MAX_SECTORS);

	/* Do not exceed controller limit */
	rw_max = FUNC7(rw_max, FUNC9(q));

	/*
	 * Only update max_sectors if previously unset or if the current value
	 * exceeds the capabilities of the hardware.
	 */
	if (sdkp->first_scan ||
	    q->limits.max_sectors > q->limits.max_dev_sectors ||
	    q->limits.max_sectors > q->limits.max_hw_sectors)
		q->limits.max_sectors = rw_max;

	sdkp->first_scan = 0;

	FUNC29(disk, FUNC6(sdp, sdkp->capacity));
	FUNC13(sdkp);
	FUNC3(buffer);

 out:
	return 0;
}