
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


struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {TYPE_6__* qtcb; int req_id; struct zfcp_erp_action* erp_action; int data; int handler; int qdio_req; int status; } ;
struct zfcp_erp_action {int fsf_req_id; int sdev; TYPE_3__* port; struct zfcp_adapter* adapter; } ;
struct TYPE_7__ {int erp_req; } ;
struct zfcp_adapter {int connection_features; TYPE_1__ pool; struct zfcp_qdio* qdio; } ;
struct TYPE_10__ {int option; int fcp_lun; } ;
struct TYPE_11__ {TYPE_4__ support; } ;
struct TYPE_8__ {int port_handle; } ;
struct TYPE_12__ {TYPE_5__ bottom; TYPE_2__ header; } ;
struct TYPE_9__ {int handle; } ;


 int EIO ;
 int FSF_FEATURE_NPIV_MODE ;
 int FSF_OPEN_LUN_SUPPRESS_BOXING ;
 int FSF_QTCB_OPEN_LUN ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_fsf_open_lun_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;
 int zfcp_scsi_dev_lun (int ) ;

int zfcp_fsf_open_lun(struct zfcp_erp_action *erp_action)
{
 struct zfcp_adapter *adapter = erp_action->adapter;
 struct zfcp_qdio *qdio = adapter->qdio;
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_OPEN_LUN,
      SBAL_SFLAGS0_TYPE_READ,
      adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->qtcb->header.port_handle = erp_action->port->handle;
 req->qtcb->bottom.support.fcp_lun = zfcp_scsi_dev_lun(erp_action->sdev);
 req->handler = zfcp_fsf_open_lun_handler;
 req->data = erp_action->sdev;
 req->erp_action = erp_action;
 erp_action->fsf_req_id = req->req_id;

 if (!(adapter->connection_features & FSF_FEATURE_NPIV_MODE))
  req->qtcb->bottom.support.option = FSF_OPEN_LUN_SUPPRESS_BOXING;

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
