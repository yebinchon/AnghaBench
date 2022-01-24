#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_scsi_dev {TYPE_5__* port; int /*<<< orphan*/  lun_handle; int /*<<< orphan*/  status; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_9__* qtcb; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  handler; struct scsi_device* data; } ;
struct scsi_device {int dummy; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_15__ {struct fcp_cmnd iu; } ;
struct TYPE_16__ {TYPE_6__ fcp_cmnd; int /*<<< orphan*/  fcp_cmnd_length; int /*<<< orphan*/  service_class; int /*<<< orphan*/  data_direction; } ;
struct TYPE_17__ {TYPE_7__ io; } ;
struct TYPE_13__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  lun_handle; } ;
struct TYPE_18__ {TYPE_8__ bottom; TYPE_4__ header; } ;
struct TYPE_14__ {int /*<<< orphan*/  handle; TYPE_1__* adapter; } ;
struct TYPE_11__ {int /*<<< orphan*/  scsi_req; } ;
struct TYPE_12__ {TYPE_2__ pool; } ;
struct TYPE_10__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCP_CMND_LEN ; 
 int /*<<< orphan*/  FSF_CLASS_3 ; 
 int /*<<< orphan*/  FSF_DATADIR_CMND ; 
 int /*<<< orphan*/  FSF_QTCB_FCP_CMND ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE ; 
 int /*<<< orphan*/  ZFCP_FSF_SCSI_ER_TIMEOUT ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fcp_cmnd*,struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfcp_fsf_fcp_task_mgmt_handler ; 
 struct zfcp_fsf_req* FUNC7 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

struct zfcp_fsf_req *FUNC13(struct scsi_device *sdev,
					    u8 tm_flags)
{
	struct zfcp_fsf_req *req = NULL;
	struct fcp_cmnd *fcp_cmnd;
	struct zfcp_scsi_dev *zfcp_sdev = FUNC2(sdev);
	struct zfcp_qdio *qdio = zfcp_sdev->port->adapter->qdio;

	if (FUNC5(!(FUNC1(&zfcp_sdev->status) &
		       ZFCP_STATUS_COMMON_UNBLOCKED)))
		return NULL;

	FUNC3(&qdio->req_q_lock);
	if (FUNC11(qdio))
		goto out;

	req = FUNC7(qdio, FSF_QTCB_FCP_CMND,
				  SBAL_SFLAGS0_TYPE_WRITE,
				  qdio->adapter->pool.scsi_req);

	if (FUNC0(req)) {
		req = NULL;
		goto out;
	}

	req->data = sdev;

	req->handler = zfcp_fsf_fcp_task_mgmt_handler;
	req->qtcb->header.lun_handle = zfcp_sdev->lun_handle;
	req->qtcb->header.port_handle = zfcp_sdev->port->handle;
	req->qtcb->bottom.io.data_direction = FSF_DATADIR_CMND;
	req->qtcb->bottom.io.service_class = FSF_CLASS_3;
	req->qtcb->bottom.io.fcp_cmnd_length = FCP_CMND_LEN;

	FUNC12(qdio, &req->qdio_req);

	fcp_cmnd = &req->qtcb->bottom.io.fcp_cmnd.iu;
	FUNC6(fcp_cmnd, sdev, tm_flags);

	FUNC10(req, ZFCP_FSF_SCSI_ER_TIMEOUT);
	if (!FUNC9(req)) {
		/* NOTE: DO NOT TOUCH req, UNTIL IT COMPLETES! */
		goto out;
	}

	FUNC8(req);
	req = NULL;
out:
	FUNC4(&qdio->req_q_lock);
	return req;
}