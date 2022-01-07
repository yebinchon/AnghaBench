
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int dummy; } ;
struct afs_call_type {int op; } ;
struct afs_call {size_t request_size; size_t reply_max; int waitq; int operation_ID; void* buffer; void* request; } ;


 int GFP_NOFS ;
 struct afs_call* afs_alloc_call (struct afs_net*,struct afs_call_type const*,int ) ;
 int afs_extract_to_buf (struct afs_call*,size_t) ;
 int afs_put_call (struct afs_call*) ;
 int init_waitqueue_head (int *) ;
 void* kmalloc (size_t,int ) ;

struct afs_call *afs_alloc_flat_call(struct afs_net *net,
         const struct afs_call_type *type,
         size_t request_size, size_t reply_max)
{
 struct afs_call *call;

 call = afs_alloc_call(net, type, GFP_NOFS);
 if (!call)
  goto nomem_call;

 if (request_size) {
  call->request_size = request_size;
  call->request = kmalloc(request_size, GFP_NOFS);
  if (!call->request)
   goto nomem_free;
 }

 if (reply_max) {
  call->reply_max = reply_max;
  call->buffer = kmalloc(reply_max, GFP_NOFS);
  if (!call->buffer)
   goto nomem_free;
 }

 afs_extract_to_buf(call, call->reply_max);
 call->operation_ID = type->op;
 init_waitqueue_head(&call->waitq);
 return call;

nomem_free:
 afs_put_call(call);
nomem_call:
 return ((void*)0);
}
