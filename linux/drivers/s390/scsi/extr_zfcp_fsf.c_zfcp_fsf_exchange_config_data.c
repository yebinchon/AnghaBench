
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
struct zfcp_fsf_req {int req_id; int handler; struct zfcp_erp_action* erp_action; TYPE_6__* qtcb; int qdio_req; int status; } ;
struct zfcp_erp_action {int fsf_req_id; TYPE_1__* adapter; } ;
struct TYPE_10__ {int feature_selection; } ;
struct TYPE_11__ {TYPE_4__ config; } ;
struct TYPE_12__ {TYPE_5__ bottom; } ;
struct TYPE_8__ {int erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_FEATURE_NOTIFICATION_LOST ;
 int FSF_FEATURE_UPDATE_ALERT ;
 int FSF_QTCB_EXCHANGE_CONFIG_DATA ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_fsf_exchange_config_data_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_exchange_config_data(struct zfcp_erp_action *erp_action)
{
 struct zfcp_fsf_req *req;
 struct zfcp_qdio *qdio = erp_action->adapter->qdio;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_EXCHANGE_CONFIG_DATA,
      SBAL_SFLAGS0_TYPE_READ,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 req->qtcb->bottom.config.feature_selection =
   FSF_FEATURE_NOTIFICATION_LOST |
   FSF_FEATURE_UPDATE_ALERT;
 req->erp_action = erp_action;
 req->handler = zfcp_fsf_exchange_config_data_handler;
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
