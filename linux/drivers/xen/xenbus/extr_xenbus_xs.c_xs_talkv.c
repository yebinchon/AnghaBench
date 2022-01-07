
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsd_sockmsg {int type; unsigned int len; int tx_id; scalar_t__ req_id; } ;
struct xenbus_transaction {int id; } ;
struct xb_req_data {unsigned int num_vecs; int user_req; int cb; struct kvec const* vec; } ;
struct kvec {scalar_t__ iov_len; } ;
typedef enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ XS_ERROR ;
 int __GFP_HIGH ;
 int get_error (void*) ;
 int kfree (void*) ;
 struct xb_req_data* kmalloc (int,int) ;
 int pr_warn_ratelimited (char*,int,int) ;
 int xs_send (struct xb_req_data*,struct xsd_sockmsg*) ;
 void* xs_wait_for_reply (struct xb_req_data*,struct xsd_sockmsg*) ;
 int xs_wake_up ;

__attribute__((used)) static void *xs_talkv(struct xenbus_transaction t,
        enum xsd_sockmsg_type type,
        const struct kvec *iovec,
        unsigned int num_vecs,
        unsigned int *len)
{
 struct xb_req_data *req;
 struct xsd_sockmsg msg;
 void *ret = ((void*)0);
 unsigned int i;
 int err;

 req = kmalloc(sizeof(*req), GFP_NOIO | __GFP_HIGH);
 if (!req)
  return ERR_PTR(-ENOMEM);

 req->vec = iovec;
 req->num_vecs = num_vecs;
 req->cb = xs_wake_up;
 req->user_req = 0;

 msg.req_id = 0;
 msg.tx_id = t.id;
 msg.type = type;
 msg.len = 0;
 for (i = 0; i < num_vecs; i++)
  msg.len += iovec[i].iov_len;

 xs_send(req, &msg);

 ret = xs_wait_for_reply(req, &msg);
 if (len)
  *len = msg.len;

 if (IS_ERR(ret))
  return ret;

 if (msg.type == XS_ERROR) {
  err = get_error(ret);
  kfree(ret);
  return ERR_PTR(-err);
 }

 if (msg.type != type) {
  pr_warn_ratelimited("unexpected type [%d], expected [%d]\n",
        msg.type, type);
  kfree(ret);
  return ERR_PTR(-EINVAL);
 }
 return ret;
}
