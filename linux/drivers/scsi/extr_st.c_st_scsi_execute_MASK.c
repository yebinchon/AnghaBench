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
struct st_request {int /*<<< orphan*/  bio; struct scsi_tape* stp; } ;
struct scsi_tape {TYPE_3__* stats; TYPE_2__* device; TYPE_1__* buffer; } ;
struct scsi_request {int retries; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd; } ;
struct rq_map_data {int null_mapped; } ;
struct request {int timeout; int /*<<< orphan*/  q; struct st_request* end_io_data; int /*<<< orphan*/  bio; int /*<<< orphan*/  rq_flags; } ;
struct TYPE_6__ {void* other_time; void* read_time; int /*<<< orphan*/  last_read_size; void* write_time; int /*<<< orphan*/  last_write_size; int /*<<< orphan*/  in_flight; } ;
struct TYPE_5__ {int /*<<< orphan*/  request_queue; } ;
struct TYPE_4__ {struct rq_map_data map_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int DMA_TO_DEVICE ; 
 int DRIVER_ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct request*) ; 
 unsigned char const READ_6 ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
 int /*<<< orphan*/  RQF_QUIET ; 
 unsigned char const WRITE_6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct request*,struct rq_map_data*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scsi_request* FUNC11 (struct request*) ; 
 int /*<<< orphan*/  st_scsi_execute_end ; 

__attribute__((used)) static int FUNC12(struct st_request *SRpnt, const unsigned char *cmd,
			   int data_direction, void *buffer, unsigned bufflen,
			   int timeout, int retries)
{
	struct request *req;
	struct scsi_request *rq;
	struct rq_map_data *mdata = &SRpnt->stp->buffer->map_data;
	int err = 0;
	struct scsi_tape *STp = SRpnt->stp;

	req = FUNC5(SRpnt->stp->device->request_queue,
			data_direction == DMA_TO_DEVICE ?
			REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
	if (FUNC1(req))
		return DRIVER_ERROR << 24;
	rq = FUNC11(req);
	req->rq_flags |= RQF_QUIET;

	mdata->null_mapped = 1;

	if (bufflen) {
		err = FUNC7(req->q, req, mdata, NULL, bufflen,
				      GFP_KERNEL);
		if (err) {
			FUNC6(req);
			return DRIVER_ERROR << 24;
		}
	}

	FUNC2(&STp->stats->in_flight);
	if (cmd[0] == WRITE_6) {
		FUNC3(&STp->stats->last_write_size, bufflen);
		STp->stats->write_time = FUNC8();
	} else if (cmd[0] == READ_6) {
		FUNC3(&STp->stats->last_read_size, bufflen);
		STp->stats->read_time = FUNC8();
	} else {
		STp->stats->other_time = FUNC8();
	}

	SRpnt->bio = req->bio;
	rq->cmd_len = FUNC0(cmd[0]);
	FUNC10(rq->cmd, 0, BLK_MAX_CDB);
	FUNC9(rq->cmd, cmd, rq->cmd_len);
	req->timeout = timeout;
	rq->retries = retries;
	req->end_io_data = SRpnt;

	FUNC4(req->q, NULL, req, 1, st_scsi_execute_end);
	return 0;
}