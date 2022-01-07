
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct xb_req_data {scalar_t__ type; int body; TYPE_1__ msg; int user_req; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ XS_ERROR ;
 scalar_t__ XS_TRANSACTION_END ;
 scalar_t__ XS_TRANSACTION_START ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,char*) ;
 int wake_up (int *) ;
 int xs_state_exit_wq ;
 int xs_state_lock ;
 int xs_state_users ;
 scalar_t__ xs_suspend_active ;

void xs_request_exit(struct xb_req_data *req)
{
 spin_lock(&xs_state_lock);
 xs_state_users--;
 if ((req->type == XS_TRANSACTION_START && req->msg.type == XS_ERROR) ||
     (req->type == XS_TRANSACTION_END && !req->user_req &&
      !WARN_ON_ONCE(req->msg.type == XS_ERROR &&
      !strcmp(req->body, "ENOENT"))))
  xs_state_users--;
 spin_unlock(&xs_state_lock);

 if (xs_suspend_active && !xs_state_users)
  wake_up(&xs_state_exit_wq);
}
