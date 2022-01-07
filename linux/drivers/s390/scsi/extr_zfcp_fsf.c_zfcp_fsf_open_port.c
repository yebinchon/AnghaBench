
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


struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_port {int dev; int d_id; } ;
struct zfcp_fsf_req {int req_id; struct zfcp_erp_action* erp_action; struct zfcp_port* data; TYPE_6__* qtcb; int handler; int qdio_req; int status; } ;
struct zfcp_erp_action {int fsf_req_id; struct zfcp_port* port; TYPE_1__* adapter; } ;
struct TYPE_10__ {int d_id; } ;
struct TYPE_11__ {TYPE_4__ support; } ;
struct TYPE_12__ {TYPE_5__ bottom; } ;
struct TYPE_8__ {int erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_QTCB_OPEN_PORT_WITH_DID ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int get_device (int *) ;
 int hton24 (int ,int ) ;
 int put_device (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_fsf_open_port_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_open_port(struct zfcp_erp_action *erp_action)
{
 struct zfcp_qdio *qdio = erp_action->adapter->qdio;
 struct zfcp_port *port = erp_action->port;
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_OPEN_PORT_WITH_DID,
      SBAL_SFLAGS0_TYPE_READ,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->handler = zfcp_fsf_open_port_handler;
 hton24(req->qtcb->bottom.support.d_id, port->d_id);
 req->data = port;
 req->erp_action = erp_action;
 erp_action->fsf_req_id = req->req_id;
 get_device(&port->dev);

 zfcp_fsf_start_erp_timer(req);
 retval = zfcp_fsf_req_send(req);
 if (retval) {
  zfcp_fsf_req_free(req);
  erp_action->fsf_req_id = 0;
  put_device(&port->dev);
 }

out:
 spin_unlock_irq(&qdio->req_q_lock);
 return retval;
}
