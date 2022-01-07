
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {unsigned long req_id; TYPE_5__* qtcb; struct zfcp_fc_wka_port* data; int handler; int qdio_req; int status; } ;
struct zfcp_fc_wka_port {int handle; TYPE_1__* adapter; } ;
struct TYPE_9__ {int port_handle; } ;
struct TYPE_10__ {TYPE_4__ header; } ;
struct TYPE_7__ {int erp_req; } ;
struct TYPE_8__ {TYPE_2__ pool; } ;
struct TYPE_6__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_QTCB_CLOSE_PORT ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_FSF_REQUEST_TIMEOUT ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_dbf_rec_run_wka (char*,struct zfcp_fc_wka_port*,unsigned long) ;
 int zfcp_fsf_close_wka_port_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_close_wka_port(struct zfcp_fc_wka_port *wka_port)
{
 struct zfcp_qdio *qdio = wka_port->adapter->qdio;
 struct zfcp_fsf_req *req;
 unsigned long req_id = 0;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_CLOSE_PORT,
      SBAL_SFLAGS0_TYPE_READ,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->handler = zfcp_fsf_close_wka_port_handler;
 req->data = wka_port;
 req->qtcb->header.port_handle = wka_port->handle;

 req_id = req->req_id;

 zfcp_fsf_start_timer(req, ZFCP_FSF_REQUEST_TIMEOUT);
 retval = zfcp_fsf_req_send(req);
 if (retval)
  zfcp_fsf_req_free(req);

out:
 spin_unlock_irq(&qdio->req_q_lock);
 if (!retval)
  zfcp_dbf_rec_run_wka("fscwp_1", wka_port, req_id);
 return retval;
}
