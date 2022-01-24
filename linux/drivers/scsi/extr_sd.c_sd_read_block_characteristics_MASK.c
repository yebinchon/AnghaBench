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
typedef  int u16 ;
struct scsi_disk {unsigned char zoned; scalar_t__ first_scan; TYPE_3__* device; TYPE_1__* disk; } ;
struct TYPE_5__ {scalar_t__ zoned; } ;
struct request_queue {TYPE_2__ limits; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {struct request_queue* queue; } ;

/* Variables and functions */
 scalar_t__ BLK_ZONED_HA ; 
 scalar_t__ BLK_ZONED_HM ; 
 scalar_t__ BLK_ZONED_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 scalar_t__ TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int,unsigned char*,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_disk*,char*,char*) ; 

__attribute__((used)) static void FUNC8(struct scsi_disk *sdkp)
{
	struct request_queue *q = sdkp->disk->queue;
	unsigned char *buffer;
	u16 rot;
	const int vpd_len = 64;

	buffer = FUNC5(vpd_len, GFP_KERNEL);

	if (!buffer ||
	    /* Block Device Characteristics VPD */
	    FUNC6(sdkp->device, 0xb1, buffer, vpd_len))
		goto out;

	rot = FUNC3(&buffer[4]);

	if (rot == 1) {
		FUNC1(QUEUE_FLAG_NONROT, q);
		FUNC0(QUEUE_FLAG_ADD_RANDOM, q);
	}

	if (sdkp->device->type == TYPE_ZBC) {
		/* Host-managed */
		q->limits.zoned = BLK_ZONED_HM;
	} else {
		sdkp->zoned = (buffer[8] >> 4) & 3;
		if (sdkp->zoned == 1)
			/* Host-aware */
			q->limits.zoned = BLK_ZONED_HA;
		else
			/*
			 * Treat drive-managed devices as
			 * regular block devices.
			 */
			q->limits.zoned = BLK_ZONED_NONE;
	}
	if (FUNC2(q) && sdkp->first_scan)
		FUNC7(KERN_NOTICE, sdkp, "Host-%s zoned block device\n",
		      q->limits.zoned == BLK_ZONED_HM ? "managed" : "aware");

 out:
	FUNC4(buffer);
}