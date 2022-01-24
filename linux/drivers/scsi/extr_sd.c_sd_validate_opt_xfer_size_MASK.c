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
struct scsi_disk {unsigned int opt_xfer_blocks; int physical_block_size; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int PAGE_SIZE ; 
 unsigned int SD_DEF_XFER_BLOCKS ; 
 unsigned int FUNC0 (struct scsi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_disk*,char*,unsigned int,...) ; 

__attribute__((used)) static bool FUNC2(struct scsi_disk *sdkp,
				      unsigned int dev_max)
{
	struct scsi_device *sdp = sdkp->device;
	unsigned int opt_xfer_bytes =
		FUNC0(sdp, sdkp->opt_xfer_blocks);

	if (sdkp->opt_xfer_blocks == 0)
		return false;

	if (sdkp->opt_xfer_blocks > dev_max) {
		FUNC1(KERN_WARNING, sdkp,
				"Optimal transfer size %u logical blocks " \
				"> dev_max (%u logical blocks)\n",
				sdkp->opt_xfer_blocks, dev_max);
		return false;
	}

	if (sdkp->opt_xfer_blocks > SD_DEF_XFER_BLOCKS) {
		FUNC1(KERN_WARNING, sdkp,
				"Optimal transfer size %u logical blocks " \
				"> sd driver limit (%u logical blocks)\n",
				sdkp->opt_xfer_blocks, SD_DEF_XFER_BLOCKS);
		return false;
	}

	if (opt_xfer_bytes < PAGE_SIZE) {
		FUNC1(KERN_WARNING, sdkp,
				"Optimal transfer size %u bytes < " \
				"PAGE_SIZE (%u bytes)\n",
				opt_xfer_bytes, (unsigned int)PAGE_SIZE);
		return false;
	}

	if (opt_xfer_bytes & (sdkp->physical_block_size - 1)) {
		FUNC1(KERN_WARNING, sdkp,
				"Optimal transfer size %u bytes not a " \
				"multiple of physical block size (%u bytes)\n",
				opt_xfer_bytes, sdkp->physical_block_size);
		return false;
	}

	FUNC1(KERN_INFO, sdkp, "Optimal transfer size %u bytes\n",
			opt_xfer_bytes);
	return true;
}