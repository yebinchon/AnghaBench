
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsd_sockmsg {int len; } ;
struct xb_req_data {int num_vecs; int user_req; void* par; int cb; struct kvec* vec; } ;
struct kvec {struct xsd_sockmsg* iov_base; int iov_len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct xb_req_data* kmalloc (int,int ) ;
 int xenbus_dev_queue_reply ;
 int xs_send (struct xb_req_data*,struct xsd_sockmsg*) ;

int xenbus_dev_request_and_reply(struct xsd_sockmsg *msg, void *par)
{
 struct xb_req_data *req;
 struct kvec *vec;

 req = kmalloc(sizeof(*req) + sizeof(*vec), GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 vec = (struct kvec *)(req + 1);
 vec->iov_len = msg->len;
 vec->iov_base = msg + 1;

 req->vec = vec;
 req->num_vecs = 1;
 req->cb = xenbus_dev_queue_reply;
 req->par = par;
 req->user_req = 1;

 xs_send(req, msg);

 return 0;
}
