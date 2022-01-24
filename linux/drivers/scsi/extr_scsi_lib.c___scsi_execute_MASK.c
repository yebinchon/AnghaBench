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
typedef  int /*<<< orphan*/  u64 ;
struct scsi_sense_hdr {int dummy; } ;
struct scsi_request {unsigned char* cmd; int retries; unsigned int resid_len; unsigned char const* sense; int result; scalar_t__ sense_len; int /*<<< orphan*/  cmd_len; } ;
struct scsi_device {int /*<<< orphan*/  request_queue; } ;
struct request {int timeout; int rq_flags; int /*<<< orphan*/  q; int /*<<< orphan*/  cmd_flags; } ;
typedef  int req_flags_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int DMA_TO_DEVICE ; 
 int DRIVER_ERROR ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
 int RQF_QUIET ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*,scalar_t__,struct scsi_sense_hdr*) ; 
 struct scsi_request* FUNC9 (struct request*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct scsi_device *sdev, const unsigned char *cmd,
		 int data_direction, void *buffer, unsigned bufflen,
		 unsigned char *sense, struct scsi_sense_hdr *sshdr,
		 int timeout, int retries, u64 flags, req_flags_t rq_flags,
		 int *resid)
{
	struct request *req;
	struct scsi_request *rq;
	int ret = DRIVER_ERROR << 24;

	req = FUNC3(sdev->request_queue,
			data_direction == DMA_TO_DEVICE ?
			REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, BLK_MQ_REQ_PREEMPT);
	if (FUNC1(req))
		return ret;
	rq = FUNC9(req);

	if (bufflen &&	FUNC5(sdev->request_queue, req,
					buffer, bufflen, GFP_NOIO))
		goto out;

	rq->cmd_len = FUNC0(cmd[0]);
	FUNC6(rq->cmd, cmd, rq->cmd_len);
	rq->retries = retries;
	req->timeout = timeout;
	req->cmd_flags |= flags;
	req->rq_flags |= rq_flags | RQF_QUIET;

	/*
	 * head injection *required* here otherwise quiesce won't work
	 */
	FUNC2(req->q, NULL, req, 1);

	/*
	 * Some devices (USB mass-storage in particular) may transfer
	 * garbage data together with a residue indicating that the data
	 * is invalid.  Prevent the garbage from being misinterpreted
	 * and prevent security leaks by zeroing out the excess data.
	 */
	if (FUNC10(rq->resid_len > 0 && rq->resid_len <= bufflen))
		FUNC7(buffer + (bufflen - rq->resid_len), 0, rq->resid_len);

	if (resid)
		*resid = rq->resid_len;
	if (sense && rq->sense_len)
		FUNC6(sense, rq->sense, SCSI_SENSE_BUFFERSIZE);
	if (sshdr)
		FUNC8(rq->sense, rq->sense_len, sshdr);
	ret = rq->result;
 out:
	FUNC4(req);

	return ret;
}