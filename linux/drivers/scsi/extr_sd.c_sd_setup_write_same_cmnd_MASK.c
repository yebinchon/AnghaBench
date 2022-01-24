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
typedef  int u64 ;
typedef  int u32 ;
struct scsi_disk {scalar_t__ ws16; TYPE_1__* device; } ;
struct scsi_device {scalar_t__ sector_size; } ;
struct scsi_cmnd {int cmd_len; scalar_t__ transfersize; int /*<<< orphan*/  allowed; int /*<<< orphan*/ * cmnd; struct scsi_device* device; struct request* request; } ;
struct request {scalar_t__ __data_len; int /*<<< orphan*/  timeout; struct bio* bio; int /*<<< orphan*/  rq_disk; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {scalar_t__ bv_len; } ;
struct TYPE_3__ {scalar_t__ no_write_same; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_WRITE_SAME_TIMEOUT ; 
 int /*<<< orphan*/  WRITE_SAME ; 
 int /*<<< orphan*/  WRITE_SAME_16 ; 
 TYPE_2__ FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 struct scsi_disk* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 int FUNC11 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC12(struct scsi_cmnd *cmd)
{
	struct request *rq = cmd->request;
	struct scsi_device *sdp = cmd->device;
	struct scsi_disk *sdkp = FUNC9(rq->rq_disk);
	struct bio *bio = rq->bio;
	u64 lba = FUNC11(sdp, FUNC4(rq));
	u32 nr_blocks = FUNC11(sdp, FUNC5(rq));
	blk_status_t ret;

	if (sdkp->device->no_write_same)
		return BLK_STS_TARGET;

	FUNC0(FUNC2(bio) || FUNC1(bio).bv_len != sdp->sector_size);

	rq->timeout = SD_WRITE_SAME_TIMEOUT;

	if (sdkp->ws16 || lba > 0xffffffff || nr_blocks > 0xffff) {
		cmd->cmd_len = 16;
		cmd->cmnd[0] = WRITE_SAME_16;
		FUNC8(lba, &cmd->cmnd[2]);
		FUNC7(nr_blocks, &cmd->cmnd[10]);
	} else {
		cmd->cmd_len = 10;
		cmd->cmnd[0] = WRITE_SAME;
		FUNC7(lba, &cmd->cmnd[2]);
		FUNC6(nr_blocks, &cmd->cmnd[7]);
	}

	cmd->transfersize = sdp->sector_size;
	cmd->allowed = SD_MAX_RETRIES;

	/*
	 * For WRITE SAME the data transferred via the DATA OUT buffer is
	 * different from the amount of data actually written to the target.
	 *
	 * We set up __data_len to the amount of data transferred via the
	 * DATA OUT buffer so that blk_rq_map_sg sets up the proper S/G list
	 * to transfer a single sector of data first, but then reset it to
	 * the amount of data to be written right after so that the I/O path
	 * knows how much to actually write.
	 */
	rq->__data_len = sdp->sector_size;
	ret = FUNC10(cmd);
	rq->__data_len = FUNC3(rq);

	return ret;
}