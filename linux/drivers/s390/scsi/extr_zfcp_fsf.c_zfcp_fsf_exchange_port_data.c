
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {int req_id; struct zfcp_erp_action* erp_action; int handler; int qdio_req; int status; } ;
struct zfcp_erp_action {int fsf_req_id; TYPE_1__* adapter; } ;
struct TYPE_5__ {int erp_req; } ;
struct TYPE_6__ {int adapter_features; TYPE_2__ pool; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int FSF_FEATURE_HBAAPI_MANAGEMENT ;
 int FSF_QTCB_EXCHANGE_PORT_DATA ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_fsf_exchange_port_data_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_exchange_port_data(struct zfcp_erp_action *erp_action)
{
 struct zfcp_qdio *qdio = erp_action->adapter->qdio;
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
  return -EOPNOTSUPP;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_EXCHANGE_PORT_DATA,
      SBAL_SFLAGS0_TYPE_READ,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->handler = zfcp_fsf_exchange_port_data_handler;
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
