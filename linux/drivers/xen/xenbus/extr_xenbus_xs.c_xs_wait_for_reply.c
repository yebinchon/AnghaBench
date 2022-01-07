
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsd_sockmsg {int len; int type; } ;
struct TYPE_2__ {int len; int type; } ;
struct xb_req_data {scalar_t__ state; TYPE_1__ msg; } ;


 int kfree (struct xb_req_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* read_reply (struct xb_req_data*) ;
 scalar_t__ xb_req_state_aborted ;
 scalar_t__ xb_req_state_queued ;
 scalar_t__ xb_req_state_wait_reply ;
 int xb_write_mutex ;
 int xs_request_exit (struct xb_req_data*) ;

__attribute__((used)) static void *xs_wait_for_reply(struct xb_req_data *req, struct xsd_sockmsg *msg)
{
 void *ret;

 ret = read_reply(req);

 xs_request_exit(req);

 msg->type = req->msg.type;
 msg->len = req->msg.len;

 mutex_lock(&xb_write_mutex);
 if (req->state == xb_req_state_queued ||
     req->state == xb_req_state_wait_reply)
  req->state = xb_req_state_aborted;
 else
  kfree(req);
 mutex_unlock(&xb_write_mutex);

 return ret;
}
