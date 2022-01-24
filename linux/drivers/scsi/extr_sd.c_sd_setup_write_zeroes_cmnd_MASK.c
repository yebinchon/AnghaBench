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
typedef  int u64 ;
typedef  int u32 ;
struct scsi_disk {int zeroing_mode; scalar_t__ ws16; } ;
struct scsi_device {scalar_t__ no_write_same; } ;
struct scsi_cmnd {struct scsi_device* device; struct request* request; } ;
struct request {int cmd_flags; int /*<<< orphan*/  rq_disk; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_TARGET ; 
 int REQ_NOUNMAP ; 
#define  SD_ZERO_WS10_UNMAP 129 
#define  SD_ZERO_WS16_UNMAP 128 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct scsi_disk* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int) ; 
 int FUNC5 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC6(struct scsi_cmnd *cmd)
{
	struct request *rq = cmd->request;
	struct scsi_device *sdp = cmd->device;
	struct scsi_disk *sdkp = FUNC2(rq->rq_disk);
	u64 lba = FUNC5(sdp, FUNC0(rq));
	u32 nr_blocks = FUNC5(sdp, FUNC1(rq));

	if (!(rq->cmd_flags & REQ_NOUNMAP)) {
		switch (sdkp->zeroing_mode) {
		case SD_ZERO_WS16_UNMAP:
			return FUNC4(cmd, true);
		case SD_ZERO_WS10_UNMAP:
			return FUNC3(cmd, true);
		}
	}

	if (sdp->no_write_same)
		return BLK_STS_TARGET;

	if (sdkp->ws16 || lba > 0xffffffff || nr_blocks > 0xffff)
		return FUNC4(cmd, false);

	return FUNC3(cmd, false);
}