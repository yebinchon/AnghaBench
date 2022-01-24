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
struct scsi_sense_hdr {int asc; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ start_stop_pwr_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 scalar_t__ DRIVER_SENSE ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  RQF_PM ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 unsigned char START_STOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int FUNC2 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_disk*,struct scsi_sense_hdr*) ; 

__attribute__((used)) static int FUNC6(struct scsi_disk *sdkp, int start)
{
	unsigned char cmd[6] = { START_STOP };	/* START_VALID */
	struct scsi_sense_hdr sshdr;
	struct scsi_device *sdp = sdkp->device;
	int res;

	if (start)
		cmd[4] |= 1;	/* START */

	if (sdp->start_stop_pwr_cond)
		cmd[4] |= start ? 1 << 4 : 3 << 4;	/* Active or Standby */

	if (!FUNC1(sdp))
		return -ENODEV;

	res = FUNC2(sdp, cmd, DMA_NONE, NULL, 0, NULL, &sshdr,
			SD_TIMEOUT, SD_MAX_RETRIES, 0, RQF_PM, NULL);
	if (res) {
		FUNC4(sdkp, "Start/Stop Unit failed", res);
		if (FUNC0(res) == DRIVER_SENSE)
			FUNC5(sdkp, &sshdr);
		if (FUNC3(&sshdr) &&
			/* 0x3a is medium not present */
			sshdr.asc == 0x3a)
			res = 0;
	}

	/* SCSI error codes must not go to the generic layer */
	if (res)
		return -EIO;

	return 0;
}