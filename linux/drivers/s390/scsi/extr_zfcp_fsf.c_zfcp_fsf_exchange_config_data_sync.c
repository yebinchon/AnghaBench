
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {int completion; struct fsf_qtcb_bottom_config* data; TYPE_3__* qtcb; int handler; int qdio_req; } ;
struct fsf_qtcb_bottom_config {int dummy; } ;
struct TYPE_4__ {int feature_selection; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
struct TYPE_6__ {TYPE_2__ bottom; } ;


 int EIO ;
 int FSF_FEATURE_NOTIFICATION_LOST ;
 int FSF_FEATURE_UPDATE_ALERT ;
 int FSF_QTCB_EXCHANGE_CONFIG_DATA ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_FSF_REQUEST_TIMEOUT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;
 int zfcp_fsf_exchange_config_data_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_exchange_config_data_sync(struct zfcp_qdio *qdio,
           struct fsf_qtcb_bottom_config *data)
{
 struct zfcp_fsf_req *req = ((void*)0);
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out_unlock;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_EXCHANGE_CONFIG_DATA,
      SBAL_SFLAGS0_TYPE_READ, ((void*)0));

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out_unlock;
 }

 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);
 req->handler = zfcp_fsf_exchange_config_data_handler;

 req->qtcb->bottom.config.feature_selection =
   FSF_FEATURE_NOTIFICATION_LOST |
   FSF_FEATURE_UPDATE_ALERT;

 if (data)
  req->data = data;

 zfcp_fsf_start_timer(req, ZFCP_FSF_REQUEST_TIMEOUT);
 retval = zfcp_fsf_req_send(req);
 spin_unlock_irq(&qdio->req_q_lock);
 if (!retval) {

  wait_for_completion(&req->completion);
 }

 zfcp_fsf_req_free(req);
 return retval;

out_unlock:
 spin_unlock_irq(&qdio->req_q_lock);
 return retval;
}
