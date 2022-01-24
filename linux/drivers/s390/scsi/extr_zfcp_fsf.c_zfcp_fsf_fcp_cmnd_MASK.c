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
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_scsi_dev {TYPE_3__* port; int /*<<< orphan*/  lun_handle; int /*<<< orphan*/  status; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; int /*<<< orphan*/  req_q_full; int /*<<< orphan*/  req_q_free; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  qdio_req; TYPE_6__* qtcb; int /*<<< orphan*/  handler; struct scsi_cmnd* data; int /*<<< orphan*/  status; scalar_t__ req_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  scsi_req; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; TYPE_1__ pool; } ;
struct scsi_device {int /*<<< orphan*/  sector_size; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; unsigned char* host_scribble; struct scsi_device* device; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_10__ {struct fcp_cmnd iu; } ;
struct fsf_qtcb_bottom_io {int ref_tag_value; int /*<<< orphan*/  prot_data_length; TYPE_4__ fcp_cmnd; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  data_block_length; int /*<<< orphan*/  fcp_cmnd_length; int /*<<< orphan*/  service_class; } ;
struct TYPE_11__ {struct fsf_qtcb_bottom_io io; } ;
struct TYPE_8__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  lun_handle; } ;
struct TYPE_12__ {TYPE_5__ bottom; TYPE_2__ header; } ;
struct TYPE_9__ {int /*<<< orphan*/  handle; struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FCP_CMND_LEN ; 
 int /*<<< orphan*/  FSF_CLASS_3 ; 
 int FSF_FCP_CMND_SIZE ; 
 int /*<<< orphan*/  FSF_QTCB_FCP_CMND ; 
 scalar_t__ FUNC1 (struct zfcp_fsf_req*) ; 
 int FUNC2 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE ; 
 scalar_t__ SCSI_PROT_NORMAL ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 struct zfcp_scsi_dev* FUNC10 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct fcp_cmnd*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  zfcp_fsf_fcp_cmnd_handler ; 
 struct zfcp_fsf_req* FUNC16 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct zfcp_fsf_req*) ; 
 int FUNC18 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC19 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct zfcp_qdio*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC25(struct scsi_cmnd *scsi_cmnd)
{
	struct zfcp_fsf_req *req;
	struct fcp_cmnd *fcp_cmnd;
	u8 sbtype = SBAL_SFLAGS0_TYPE_READ;
	int retval = -EIO;
	struct scsi_device *sdev = scsi_cmnd->device;
	struct zfcp_scsi_dev *zfcp_sdev = FUNC10(sdev);
	struct zfcp_adapter *adapter = zfcp_sdev->port->adapter;
	struct zfcp_qdio *qdio = adapter->qdio;
	struct fsf_qtcb_bottom_io *io;
	unsigned long flags;

	if (FUNC13(!(FUNC4(&zfcp_sdev->status) &
		       ZFCP_STATUS_COMMON_UNBLOCKED)))
		return -EBUSY;

	FUNC11(&qdio->req_q_lock, flags);
	if (FUNC4(&qdio->req_q_free) <= 0) {
		FUNC3(&qdio->req_q_full);
		goto out;
	}

	if (scsi_cmnd->sc_data_direction == DMA_TO_DEVICE)
		sbtype = SBAL_SFLAGS0_TYPE_WRITE;

	req = FUNC16(qdio, FSF_QTCB_FCP_CMND,
				  sbtype, adapter->pool.scsi_req);

	if (FUNC1(req)) {
		retval = FUNC2(req);
		goto out;
	}

	scsi_cmnd->host_scribble = (unsigned char *) req->req_id;

	io = &req->qtcb->bottom.io;
	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	req->data = scsi_cmnd;
	req->handler = zfcp_fsf_fcp_cmnd_handler;
	req->qtcb->header.lun_handle = zfcp_sdev->lun_handle;
	req->qtcb->header.port_handle = zfcp_sdev->port->handle;
	io->service_class = FSF_CLASS_3;
	io->fcp_cmnd_length = FCP_CMND_LEN;

	if (FUNC6(scsi_cmnd) != SCSI_PROT_NORMAL) {
		io->data_block_length = scsi_cmnd->device->sector_size;
		io->ref_tag_value = FUNC5(scsi_cmnd) & 0xFFFFFFFF;
	}

	if (FUNC19(scsi_cmnd, &io->data_direction))
		goto failed_scsi_cmnd;

	FUNC0(sizeof(struct fcp_cmnd) > FSF_FCP_CMND_SIZE);
	fcp_cmnd = &req->qtcb->bottom.io.fcp_cmnd.iu;
	FUNC15(fcp_cmnd, scsi_cmnd);

	if ((FUNC6(scsi_cmnd) != SCSI_PROT_NORMAL) &&
	    FUNC7(scsi_cmnd)) {
		FUNC22(qdio, &req->qdio_req,
				       FUNC7(scsi_cmnd));
		retval = FUNC21(qdio, &req->qdio_req,
						 FUNC8(scsi_cmnd));
		if (retval)
			goto failed_scsi_cmnd;
		io->prot_data_length = FUNC20(
						FUNC8(scsi_cmnd));
	}

	retval = FUNC21(qdio, &req->qdio_req,
					 FUNC9(scsi_cmnd));
	if (FUNC13(retval))
		goto failed_scsi_cmnd;

	FUNC23(adapter->qdio, &req->qdio_req);
	if (FUNC14(adapter))
		FUNC24(qdio, &req->qdio_req);

	retval = FUNC18(req);
	if (FUNC13(retval))
		goto failed_scsi_cmnd;
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */

	goto out;

failed_scsi_cmnd:
	FUNC17(req);
	scsi_cmnd->host_scribble = NULL;
out:
	FUNC12(&qdio->req_q_lock, flags);
	return retval;
}