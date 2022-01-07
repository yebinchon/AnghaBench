
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xb_req_data {scalar_t__ state; int err; void* body; int wq; } ;


 int EIO ;
 void* ERR_PTR (int) ;
 int test_reply (struct xb_req_data*) ;
 int wait_event (int ,int ) ;
 scalar_t__ xb_req_state_got_reply ;
 int xenbus_ok () ;

__attribute__((used)) static void *read_reply(struct xb_req_data *req)
{
 while (req->state != xb_req_state_got_reply) {
  wait_event(req->wq, test_reply(req));

  if (!xenbus_ok())






   return ERR_PTR(-EIO);
  if (req->err)
   return ERR_PTR(req->err);

 }

 return req->body;
}
