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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int cmd_len; int* cmnd; unsigned int transfersize; int /*<<< orphan*/  allowed; struct request* request; struct scsi_device* device; } ;
struct TYPE_2__ {unsigned int bv_len; int /*<<< orphan*/  bv_page; scalar_t__ bv_offset; } ;
struct request {int /*<<< orphan*/  timeout; TYPE_1__ special_vec; int /*<<< orphan*/  rq_flags; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RQF_SPECIAL_PAYLOAD ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 int UNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  sd_page_pool ; 
 void* FUNC9 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC10(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdp = cmd->device;
	struct request *rq = cmd->request;
	u64 lba = FUNC9(sdp, FUNC0(rq));
	u32 nr_blocks = FUNC9(sdp, FUNC1(rq));
	unsigned int data_len = 24;
	char *buf;

	rq->special_vec.bv_page = FUNC3(sd_page_pool, GFP_ATOMIC);
	if (!rq->special_vec.bv_page)
		return BLK_STS_RESOURCE;
	FUNC2(rq->special_vec.bv_page);
	rq->special_vec.bv_offset = 0;
	rq->special_vec.bv_len = data_len;
	rq->rq_flags |= RQF_SPECIAL_PAYLOAD;

	cmd->cmd_len = 10;
	cmd->cmnd[0] = UNMAP;
	cmd->cmnd[8] = 24;

	buf = FUNC4(rq->special_vec.bv_page);
	FUNC5(6 + 16, &buf[0]);
	FUNC5(16, &buf[2]);
	FUNC7(lba, &buf[8]);
	FUNC6(nr_blocks, &buf[16]);

	cmd->allowed = SD_MAX_RETRIES;
	cmd->transfersize = data_len;
	rq->timeout = SD_TIMEOUT;

	return FUNC8(cmd);
}