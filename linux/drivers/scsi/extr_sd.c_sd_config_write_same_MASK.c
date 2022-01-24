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
typedef  int /*<<< orphan*/  u32 ;
struct scsi_disk {int max_ws_blocks; unsigned int physical_block_size; TYPE_2__* device; int /*<<< orphan*/  zeroing_mode; scalar_t__ lbpws10; scalar_t__ lbprz; scalar_t__ lbpws; scalar_t__ ws10; scalar_t__ ws16; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct TYPE_4__ {unsigned int sector_size; int no_write_same; scalar_t__ no_report_opcodes; } ;
struct TYPE_3__ {struct request_queue* queue; } ;

/* Variables and functions */
 int SD_MAX_WS10_BLOCKS ; 
 scalar_t__ SD_MAX_WS16_BLOCKS ; 
 int /*<<< orphan*/  SD_ZERO_WRITE ; 
 int /*<<< orphan*/  SD_ZERO_WS ; 
 int /*<<< orphan*/  SD_ZERO_WS10_UNMAP ; 
 int /*<<< orphan*/  SD_ZERO_WS16_UNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct scsi_disk *sdkp)
{
	struct request_queue *q = sdkp->disk->queue;
	unsigned int logical_block_size = sdkp->device->sector_size;

	if (sdkp->device->no_write_same) {
		sdkp->max_ws_blocks = 0;
		goto out;
	}

	/* Some devices can not handle block counts above 0xffff despite
	 * supporting WRITE SAME(16). Consequently we default to 64k
	 * blocks per I/O unless the device explicitly advertises a
	 * bigger limit.
	 */
	if (sdkp->max_ws_blocks > SD_MAX_WS10_BLOCKS)
		sdkp->max_ws_blocks = FUNC3(sdkp->max_ws_blocks,
						   (u32)SD_MAX_WS16_BLOCKS);
	else if (sdkp->ws16 || sdkp->ws10 || sdkp->device->no_report_opcodes)
		sdkp->max_ws_blocks = FUNC3(sdkp->max_ws_blocks,
						   (u32)SD_MAX_WS10_BLOCKS);
	else {
		sdkp->device->no_write_same = 1;
		sdkp->max_ws_blocks = 0;
	}

	if (sdkp->lbprz && sdkp->lbpws)
		sdkp->zeroing_mode = SD_ZERO_WS16_UNMAP;
	else if (sdkp->lbprz && sdkp->lbpws10)
		sdkp->zeroing_mode = SD_ZERO_WS10_UNMAP;
	else if (sdkp->max_ws_blocks)
		sdkp->zeroing_mode = SD_ZERO_WS;
	else
		sdkp->zeroing_mode = SD_ZERO_WRITE;

	if (sdkp->max_ws_blocks &&
	    sdkp->physical_block_size > logical_block_size) {
		/*
		 * Reporting a maximum number of blocks that is not aligned
		 * on the device physical size would cause a large write same
		 * request to be split into physically unaligned chunks by
		 * __blkdev_issue_write_zeroes() and __blkdev_issue_write_same()
		 * even if the caller of these functions took care to align the
		 * large request. So make sure the maximum reported is aligned
		 * to the device physical block size. This is only an optional
		 * optimization for regular disks, but this is mandatory to
		 * avoid failure of large write same requests directed at
		 * sequential write required zones of host-managed ZBC disks.
		 */
		sdkp->max_ws_blocks =
			FUNC4(sdkp->max_ws_blocks,
				   FUNC2(sdkp->device,
						    sdkp->physical_block_size));
	}

out:
	FUNC0(q, sdkp->max_ws_blocks *
					 (logical_block_size >> 9));
	FUNC1(q, sdkp->max_ws_blocks *
					 (logical_block_size >> 9));
}