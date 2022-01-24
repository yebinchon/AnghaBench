#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct zfcp_scsi_dev {TYPE_5__* port; int /*<<< orphan*/  lun_handle; int /*<<< orphan*/  status; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_8__* qtcb; int /*<<< orphan*/  handler; struct scsi_device* data; int /*<<< orphan*/  qdio_req; } ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {scalar_t__ host_scribble; struct scsi_device* device; } ;
struct TYPE_14__ {scalar_t__ req_handle; } ;
struct TYPE_15__ {TYPE_6__ support; } ;
struct TYPE_12__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  lun_handle; } ;
struct TYPE_16__ {TYPE_7__ bottom; TYPE_4__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  handle; TYPE_1__* adapter; } ;
struct TYPE_10__ {int /*<<< orphan*/  scsi_abort; } ;
struct TYPE_11__ {TYPE_2__ pool; } ;
struct TYPE_9__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSF_QTCB_ABORT_FCP_CMND ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_FSF_SCSI_ER_TIMEOUT ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  zfcp_fsf_abort_fcp_command_handler ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

struct zfcp_fsf_req *FUNC12(struct scsi_cmnd *scmnd)
{
	struct zfcp_fsf_req *req = NULL;
	struct scsi_device *sdev = scmnd->device;
	struct zfcp_scsi_dev *zfcp_sdev = FUNC2(sdev);
	struct zfcp_qdio *qdio = zfcp_sdev->port->adapter->qdio;
	unsigned long old_req_id = (unsigned long) scmnd->host_scribble;

	FUNC3(&qdio->req_q_lock);
	if (FUNC10(qdio))
		goto out;
	req = FUNC6(qdio, FSF_QTCB_ABORT_FCP_CMND,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.scsi_abort);
	if (FUNC0(req)) {
		req = NULL;
		goto out;
	}

	if (FUNC5(!(FUNC1(&zfcp_sdev->status) &
		       ZFCP_STATUS_COMMON_UNBLOCKED)))
		goto out_error_free;

	FUNC11(qdio, &req->qdio_req);

	req->data = sdev;
	req->handler = zfcp_fsf_abort_fcp_command_handler;
	req->qtcb->header.lun_handle = zfcp_sdev->lun_handle;
	req->qtcb->header.port_handle = zfcp_sdev->port->handle;
	req->qtcb->bottom.support.req_handle = (u64) old_req_id;

	FUNC9(req, ZFCP_FSF_SCSI_ER_TIMEOUT);
	if (!FUNC8(req)) {
		/* NOTE: DO NOT TOUCH req, UNTIL IT COMPLETES! */
		goto out;
	}

out_error_free:
	FUNC7(req);
	req = NULL;
out:
	FUNC4(&qdio->req_q_lock);
	return req;
}