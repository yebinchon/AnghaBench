
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsd_sockmsg {int req_id; } ;
struct xb_req_data {int list; struct xsd_sockmsg msg; int caller_req_id; int wq; int state; scalar_t__ err; } ;


 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int list_is_singular (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;
 int xb_req_state_queued ;
 int xb_waitq ;
 int xb_write_list ;
 int xb_write_mutex ;
 int xs_request_enter (struct xb_req_data*) ;

__attribute__((used)) static void xs_send(struct xb_req_data *req, struct xsd_sockmsg *msg)
{
 bool notify;

 req->msg = *msg;
 req->err = 0;
 req->state = xb_req_state_queued;
 init_waitqueue_head(&req->wq);


 req->caller_req_id = req->msg.req_id;
 req->msg.req_id = xs_request_enter(req);

 mutex_lock(&xb_write_mutex);
 list_add_tail(&req->list, &xb_write_list);
 notify = list_is_singular(&xb_write_list);
 mutex_unlock(&xb_write_mutex);

 if (notify)
  wake_up(&xb_waitq);
}
