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
typedef  scalar_t__ u32 ;
struct scsi_disk {int max_xfer_blocks; int opt_xfer_blocks; unsigned int max_unmap_blocks; int unmap_granularity; int unmap_alignment; scalar_t__ lbpws10; scalar_t__ lbpws; scalar_t__ lbpu; int /*<<< orphan*/  lbpvpd; int /*<<< orphan*/  lbpme; scalar_t__ max_ws_blocks; TYPE_1__* disk; TYPE_2__* device; } ;
struct TYPE_4__ {unsigned int sector_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SD_LBP_DISABLE ; 
 int /*<<< orphan*/  SD_LBP_UNMAP ; 
 int /*<<< orphan*/  SD_LBP_WS10 ; 
 int /*<<< orphan*/  SD_LBP_WS16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,unsigned char*,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_disk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct scsi_disk *sdkp)
{
	unsigned int sector_sz = sdkp->device->sector_size;
	const int vpd_len = 64;
	unsigned char *buffer = FUNC5(vpd_len, GFP_KERNEL);

	if (!buffer ||
	    /* Block Limits VPD */
	    FUNC6(sdkp->device, 0xb0, buffer, vpd_len))
		goto out;

	FUNC0(sdkp->disk->queue,
			 FUNC1(&buffer[6]) * sector_sz);

	sdkp->max_xfer_blocks = FUNC2(&buffer[8]);
	sdkp->opt_xfer_blocks = FUNC2(&buffer[12]);

	if (buffer[3] == 0x3c) {
		unsigned int lba_count, desc_count;

		sdkp->max_ws_blocks = (u32)FUNC3(&buffer[36]);

		if (!sdkp->lbpme)
			goto out;

		lba_count = FUNC2(&buffer[20]);
		desc_count = FUNC2(&buffer[24]);

		if (lba_count && desc_count)
			sdkp->max_unmap_blocks = lba_count;

		sdkp->unmap_granularity = FUNC2(&buffer[28]);

		if (buffer[32] & 0x80)
			sdkp->unmap_alignment =
				FUNC2(&buffer[32]) & ~(1 << 31);

		if (!sdkp->lbpvpd) { /* LBP VPD page not provided */

			if (sdkp->max_unmap_blocks)
				FUNC7(sdkp, SD_LBP_UNMAP);
			else
				FUNC7(sdkp, SD_LBP_WS16);

		} else {	/* LBP VPD page tells us what to use */
			if (sdkp->lbpu && sdkp->max_unmap_blocks)
				FUNC7(sdkp, SD_LBP_UNMAP);
			else if (sdkp->lbpws)
				FUNC7(sdkp, SD_LBP_WS16);
			else if (sdkp->lbpws10)
				FUNC7(sdkp, SD_LBP_WS10);
			else
				FUNC7(sdkp, SD_LBP_DISABLE);
		}
	}

 out:
	FUNC4(buffer);
}