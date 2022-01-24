#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {int status; TYPE_6__* adapter; TYPE_5__* qtcb; struct scsi_cmnd* data; } ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  device; } ;
struct fcp_resp_with_ext {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  abort_lock; } ;
struct TYPE_8__ {struct fcp_resp_with_ext iu; } ;
struct TYPE_9__ {TYPE_2__ fcp_rsp; } ;
struct TYPE_10__ {TYPE_3__ io; } ;
struct TYPE_7__ {int fsf_status; } ;
struct TYPE_11__ {TYPE_4__ bottom; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_TRANSPORT_DISRUPTED ; 
#define  FSF_APP_TAG_CHECK_FAILURE 132 
#define  FSF_BLOCK_GUARD_CHECK_FAILURE 131 
 int FSF_FCP_RSP_SIZE ; 
#define  FSF_INCONSISTENT_PROT_DATA 130 
#define  FSF_INVALID_PROT_PARM 129 
#define  FSF_REF_TAG_CHECK_FAILURE 128 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct fcp_resp_with_ext*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static void FUNC11(struct zfcp_fsf_req *req)
{
	struct scsi_cmnd *scpnt;
	struct fcp_resp_with_ext *fcp_rsp;
	unsigned long flags;

	FUNC1(&req->adapter->abort_lock, flags);

	scpnt = req->data;
	if (FUNC5(!scpnt)) {
		FUNC2(&req->adapter->abort_lock, flags);
		return;
	}

	FUNC8(req, scpnt->device);

	if (FUNC5(req->status & ZFCP_STATUS_FSFREQ_ERROR)) {
		FUNC3(scpnt, DID_TRANSPORT_DISRUPTED);
		goto skip_fsfstatus;
	}

	switch (req->qtcb->header.fsf_status) {
	case FSF_INCONSISTENT_PROT_DATA:
	case FSF_INVALID_PROT_PARM:
		FUNC3(scpnt, DID_ERROR);
		goto skip_fsfstatus;
	case FSF_BLOCK_GUARD_CHECK_FAILURE:
		FUNC10(scpnt, 0x1);
		goto skip_fsfstatus;
	case FSF_APP_TAG_CHECK_FAILURE:
		FUNC10(scpnt, 0x2);
		goto skip_fsfstatus;
	case FSF_REF_TAG_CHECK_FAILURE:
		FUNC10(scpnt, 0x3);
		goto skip_fsfstatus;
	}
	FUNC0(sizeof(struct fcp_resp_with_ext) > FSF_FCP_RSP_SIZE);
	fcp_rsp = &req->qtcb->bottom.io.fcp_rsp.iu;
	FUNC7(fcp_rsp, scpnt);

skip_fsfstatus:
	FUNC9(req, scpnt);
	FUNC6(scpnt, req);

	scpnt->host_scribble = NULL;
	(scpnt->scsi_done) (scpnt);
	/*
	 * We must hold this lock until scsi_done has been called.
	 * Otherwise we may call scsi_done after abort regarding this
	 * command has completed.
	 * Note: scsi_done must not block!
	 */
	FUNC2(&req->adapter->abort_lock, flags);
}