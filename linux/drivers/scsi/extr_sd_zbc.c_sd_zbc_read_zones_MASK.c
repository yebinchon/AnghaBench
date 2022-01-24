#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct scsi_disk {scalar_t__ zone_blocks; unsigned int nr_zones; scalar_t__ capacity; scalar_t__ first_scan; TYPE_1__* device; struct gendisk* disk; } ;
struct gendisk {TYPE_2__* queue; } ;
struct TYPE_6__ {unsigned int nr_zones; } ;
struct TYPE_5__ {int use_16_for_rw; scalar_t__ use_10_for_rw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELEVATOR_F_ZBD_SEQ_WRITE ; 
 int /*<<< orphan*/  QUEUE_FLAG_ZONE_RESETALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gendisk*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 unsigned int FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_disk*) ; 
 int FUNC8 (struct scsi_disk*,unsigned char*) ; 
 int FUNC9 (struct scsi_disk*,scalar_t__*) ; 

int FUNC10(struct scsi_disk *sdkp, unsigned char *buf)
{
	struct gendisk *disk = sdkp->disk;
	unsigned int nr_zones;
	u32 zone_blocks = 0;
	int ret;

	if (!FUNC7(sdkp))
		/*
		 * Device managed or normal SCSI disk,
		 * no special handling required
		 */
		return 0;

	/* Check zoned block device characteristics (unconstrained reads) */
	ret = FUNC8(sdkp, buf);
	if (ret)
		goto err;

	/*
	 * Check zone size: only devices with a constant zone size (except
	 * an eventual last runt zone) that is a power of 2 are supported.
	 */
	ret = FUNC9(sdkp, &zone_blocks);
	if (ret != 0)
		goto err;

	/* The drive satisfies the kernel restrictions: set it up */
	FUNC0(sdkp->disk->queue,
			FUNC5(sdkp->device, zone_blocks));
	FUNC1(QUEUE_FLAG_ZONE_RESETALL, sdkp->disk->queue);
	FUNC2(sdkp->disk->queue,
					     ELEVATOR_F_ZBD_SEQ_WRITE);
	nr_zones = FUNC6(sdkp->capacity, zone_blocks) >> FUNC4(zone_blocks);

	/* READ16/WRITE16 is mandatory for ZBC disks */
	sdkp->device->use_16_for_rw = 1;
	sdkp->device->use_10_for_rw = 0;

	/*
	 * Revalidate the disk zone bitmaps once the block device capacity is
	 * set on the second revalidate execution during disk scan and if
	 * something changed when executing a normal revalidate.
	 */
	if (sdkp->first_scan) {
		sdkp->zone_blocks = zone_blocks;
		sdkp->nr_zones = nr_zones;
		return 0;
	}

	if (sdkp->zone_blocks != zone_blocks ||
	    sdkp->nr_zones != nr_zones ||
	    disk->queue->nr_zones != nr_zones) {
		ret = FUNC3(disk);
		if (ret != 0)
			goto err;
		sdkp->zone_blocks = zone_blocks;
		sdkp->nr_zones = nr_zones;
	}

	return 0;

err:
	sdkp->capacity = 0;

	return ret;
}