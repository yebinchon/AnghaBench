
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_scsi_dev {int lun_handle; } ;
struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {int req_id; struct zfcp_erp_action* erp_action; int data; int handler; TYPE_6__* qtcb; int qdio_req; int status; } ;
struct zfcp_erp_action {int fsf_req_id; int sdev; TYPE_4__* port; TYPE_1__* adapter; } ;
struct TYPE_11__ {int lun_handle; int port_handle; } ;
struct TYPE_12__ {TYPE_5__ header; } ;
struct TYPE_10__ {int handle; } ;
struct TYPE_8__ {int erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_QTCB_CLOSE_LUN ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 struct zfcp_scsi_dev* sdev_to_zfcp (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_fsf_close_lun_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_close_lun(struct zfcp_erp_action *erp_action)
{
 struct zfcp_qdio *qdio = erp_action->adapter->qdio;
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(erp_action->sdev);
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_CLOSE_LUN,
      SBAL_SFLAGS0_TYPE_READ,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->qtcb->header.port_handle = erp_action->port->handle;
 req->qtcb->header.lun_handle = zfcp_sdev->lun_handle;
 req->handler = zfcp_fsf_close_lun_handler;
 req->data = erp_action->sdev;
 req->erp_action = erp_action;
 erp_action->fsf_req_id = req->req_id;

 zfcp_fsf_start_erp_timer(req);
 retval = zfcp_fsf_req_send(req);
 if (retval) {
  zfcp_fsf_req_free(req);
  erp_action->fsf_req_id = 0;
 }

out:
 spin_unlock_irq(&qdio->req_q_lock);
 return retval;
}
