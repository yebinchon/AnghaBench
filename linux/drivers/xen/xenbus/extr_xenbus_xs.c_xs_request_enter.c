
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ type; } ;
struct xb_req_data {scalar_t__ type; int user_req; TYPE_1__ msg; } ;


 scalar_t__ XS_TRANSACTION_START ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;
 int xs_request_id ;
 int xs_state_enter_wq ;
 int xs_state_lock ;
 int xs_state_users ;
 scalar_t__ xs_suspend_active ;

__attribute__((used)) static uint32_t xs_request_enter(struct xb_req_data *req)
{
 uint32_t rq_id;

 req->type = req->msg.type;

 spin_lock(&xs_state_lock);

 while (!xs_state_users && xs_suspend_active) {
  spin_unlock(&xs_state_lock);
  wait_event(xs_state_enter_wq, xs_suspend_active == 0);
  spin_lock(&xs_state_lock);
 }

 if (req->type == XS_TRANSACTION_START && !req->user_req)
  xs_state_users++;
 xs_state_users++;
 rq_id = xs_request_id++;

 spin_unlock(&xs_state_lock);

 return rq_id;
}
