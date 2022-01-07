
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct zfcp_scsi_dev {TYPE_5__* port; int lun_handle; int status; } ;
struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_9__* qtcb; int qdio_req; int handler; struct scsi_device* data; } ;
struct scsi_device {int dummy; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_15__ {struct fcp_cmnd iu; } ;
struct TYPE_16__ {TYPE_6__ fcp_cmnd; int fcp_cmnd_length; int service_class; int data_direction; } ;
struct TYPE_17__ {TYPE_7__ io; } ;
struct TYPE_13__ {int port_handle; int lun_handle; } ;
struct TYPE_18__ {TYPE_8__ bottom; TYPE_4__ header; } ;
struct TYPE_14__ {int handle; TYPE_1__* adapter; } ;
struct TYPE_11__ {int scsi_req; } ;
struct TYPE_12__ {TYPE_2__ pool; } ;
struct TYPE_10__ {struct zfcp_qdio* qdio; } ;


 int FCP_CMND_LEN ;
 int FSF_CLASS_3 ;
 int FSF_DATADIR_CMND ;
 int FSF_QTCB_FCP_CMND ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_WRITE ;
 int ZFCP_FSF_SCSI_ER_TIMEOUT ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int zfcp_fc_fcp_tm (struct fcp_cmnd*,struct scsi_device*,int ) ;
 int zfcp_fsf_fcp_task_mgmt_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

struct zfcp_fsf_req *zfcp_fsf_fcp_task_mgmt(struct scsi_device *sdev,
         u8 tm_flags)
{
 struct zfcp_fsf_req *req = ((void*)0);
 struct fcp_cmnd *fcp_cmnd;
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);
 struct zfcp_qdio *qdio = zfcp_sdev->port->adapter->qdio;

 if (unlikely(!(atomic_read(&zfcp_sdev->status) &
         ZFCP_STATUS_COMMON_UNBLOCKED)))
  return ((void*)0);

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_FCP_CMND,
      SBAL_SFLAGS0_TYPE_WRITE,
      qdio->adapter->pool.scsi_req);

 if (IS_ERR(req)) {
  req = ((void*)0);
  goto out;
 }

 req->data = sdev;

 req->handler = zfcp_fsf_fcp_task_mgmt_handler;
 req->qtcb->header.lun_handle = zfcp_sdev->lun_handle;
 req->qtcb->header.port_handle = zfcp_sdev->port->handle;
 req->qtcb->bottom.io.data_direction = FSF_DATADIR_CMND;
 req->qtcb->bottom.io.service_class = FSF_CLASS_3;
 req->qtcb->bottom.io.fcp_cmnd_length = FCP_CMND_LEN;

 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 fcp_cmnd = &req->qtcb->bottom.io.fcp_cmnd.iu;
 zfcp_fc_fcp_tm(fcp_cmnd, sdev, tm_flags);

 zfcp_fsf_start_timer(req, ZFCP_FSF_SCSI_ER_TIMEOUT);
 if (!zfcp_fsf_req_send(req)) {

  goto out;
 }

 zfcp_fsf_req_free(req);
 req = ((void*)0);
out:
 spin_unlock_irq(&qdio->req_q_lock);
 return req;
}
