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
typedef  void* u64 ;
typedef  void* u32 ;
struct scsi_device {void* sector_size; } ;
struct scsi_cmnd {int cmd_len; int* cmnd; void* transfersize; int /*<<< orphan*/  allowed; struct request* request; struct scsi_device* device; } ;
struct TYPE_2__ {void* bv_len; scalar_t__ bv_offset; int /*<<< orphan*/  bv_page; } ;
struct request {int /*<<< orphan*/  timeout; int /*<<< orphan*/  rq_flags; TYPE_1__ special_vec; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RQF_SPECIAL_PAYLOAD ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 int /*<<< orphan*/  SD_WRITE_SAME_TIMEOUT ; 
 int WRITE_SAME_16 ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  sd_page_pool ; 
 void* FUNC7 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC8(struct scsi_cmnd *cmd,
		bool unmap)
{
	struct scsi_device *sdp = cmd->device;
	struct request *rq = cmd->request;
	u64 lba = FUNC7(sdp, FUNC0(rq));
	u32 nr_blocks = FUNC7(sdp, FUNC1(rq));
	u32 data_len = sdp->sector_size;

	rq->special_vec.bv_page = FUNC3(sd_page_pool, GFP_ATOMIC);
	if (!rq->special_vec.bv_page)
		return BLK_STS_RESOURCE;
	FUNC2(rq->special_vec.bv_page);
	rq->special_vec.bv_offset = 0;
	rq->special_vec.bv_len = data_len;
	rq->rq_flags |= RQF_SPECIAL_PAYLOAD;

	cmd->cmd_len = 16;
	cmd->cmnd[0] = WRITE_SAME_16;
	if (unmap)
		cmd->cmnd[1] = 0x8; /* UNMAP */
	FUNC5(lba, &cmd->cmnd[2]);
	FUNC4(nr_blocks, &cmd->cmnd[10]);

	cmd->allowed = SD_MAX_RETRIES;
	cmd->transfersize = data_len;
	rq->timeout = unmap ? SD_TIMEOUT : SD_WRITE_SAME_TIMEOUT;

	return FUNC6(cmd);
}