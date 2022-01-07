
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_rxrpc {int transport; } ;
struct rxrpc_call {int dummy; } ;
struct msghdr {int msg_flags; int msg_iter; scalar_t__ msg_controllen; int * msg_control; scalar_t__ msg_namelen; int * msg_name; } ;
struct kvec {int iov_len; int iov_base; } ;
struct afs_call {size_t addr_ix; int request_size; scalar_t__ last; scalar_t__ first; int error; int state; int async_work; scalar_t__ async; struct rxrpc_call* rxcall; TYPE_2__* net; TYPE_1__* type; int abort_code; int service_id; scalar_t__ send_pages; int request; scalar_t__ max_lifespan; int debug_id; int intr; int upgrade; int key; scalar_t__ last_to; scalar_t__ first_offset; int alist; } ;
struct afs_addr_cursor {size_t index; int responded; int error; int abort_code; TYPE_3__* alist; } ;
typedef int s64 ;
typedef int gfp_t ;
struct TYPE_6__ {struct sockaddr_rxrpc* addrs; } ;
struct TYPE_5__ {int socket; int nr_outstanding_calls; } ;
struct TYPE_4__ {int (* done ) (struct afs_call*) ;int * name; } ;


 int AFS_CALL_COMPLETE ;
 int ASSERT (int ) ;
 int ECONNABORTED ;
 scalar_t__ IS_ERR (struct rxrpc_call*) ;
 int MSG_MORE ;
 int MSG_WAITALL ;
 int PAGE_SIZE ;
 int PTR_ERR (struct rxrpc_call*) ;
 int READ ;
 int RX_USER_ABORT ;
 int WRITE ;
 int _debug (char*,struct afs_call*,int *,int ,int ) ;
 int _enter (char*,int *) ;
 int _leave (char*,int) ;
 int afs_call_trace_get ;
 int afs_get_addrlist (TYPE_3__*) ;
 int afs_get_call (struct afs_call*,int ) ;
 int afs_notify_end_request_tx ;
 int afs_put_call (struct afs_call*) ;
 int afs_send_pages (struct afs_call*,struct msghdr*) ;
 int afs_wake_up_async_call ;
 int afs_wake_up_call_waiter ;
 int atomic_read (int *) ;
 scalar_t__ cancel_work_sync (int *) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 int key_serial (int ) ;
 int rxrpc_kernel_abort_call (int ,struct rxrpc_call*,int ,int,char*) ;
 struct rxrpc_call* rxrpc_kernel_begin_call (int ,struct sockaddr_rxrpc*,int ,unsigned long,int,int ,int ,int ,int ,int ) ;
 int rxrpc_kernel_end_call (int ,struct rxrpc_call*) ;
 int rxrpc_kernel_recv_data (int ,struct rxrpc_call*,int *,int,int *,int *) ;
 int rxrpc_kernel_send_data (int ,struct rxrpc_call*,struct msghdr*,int,int ) ;
 int rxrpc_kernel_set_max_life (int ,struct rxrpc_call*,scalar_t__) ;
 int stub1 (struct afs_call*) ;
 int trace_afs_call_done (struct afs_call*) ;

void afs_make_call(struct afs_addr_cursor *ac, struct afs_call *call, gfp_t gfp)
{
 struct sockaddr_rxrpc *srx = &ac->alist->addrs[ac->index];
 struct rxrpc_call *rxcall;
 struct msghdr msg;
 struct kvec iov[1];
 s64 tx_total_len;
 int ret;

 _enter(",{%pISp},", &srx->transport);

 ASSERT(call->type != ((void*)0));
 ASSERT(call->type->name != ((void*)0));

 _debug("____MAKE %p{%s,%x} [%d]____",
        call, call->type->name, key_serial(call->key),
        atomic_read(&call->net->nr_outstanding_calls));

 call->addr_ix = ac->index;
 call->alist = afs_get_addrlist(ac->alist);





 tx_total_len = call->request_size;
 if (call->send_pages) {
  if (call->last == call->first) {
   tx_total_len += call->last_to - call->first_offset;
  } else {




   tx_total_len += PAGE_SIZE - call->first_offset;
   tx_total_len += call->last_to;
   tx_total_len += (call->last - call->first - 1) * PAGE_SIZE;
  }
 }




 if (call->async)
  afs_get_call(call, afs_call_trace_get);


 rxcall = rxrpc_kernel_begin_call(call->net->socket, srx, call->key,
      (unsigned long)call,
      tx_total_len, gfp,
      (call->async ?
       afs_wake_up_async_call :
       afs_wake_up_call_waiter),
      call->upgrade,
      call->intr,
      call->debug_id);
 if (IS_ERR(rxcall)) {
  ret = PTR_ERR(rxcall);
  call->error = ret;
  goto error_kill_call;
 }

 call->rxcall = rxcall;

 if (call->max_lifespan)
  rxrpc_kernel_set_max_life(call->net->socket, rxcall,
       call->max_lifespan);


 iov[0].iov_base = call->request;
 iov[0].iov_len = call->request_size;

 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 iov_iter_kvec(&msg.msg_iter, WRITE, iov, 1, call->request_size);
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = MSG_WAITALL | (call->send_pages ? MSG_MORE : 0);

 ret = rxrpc_kernel_send_data(call->net->socket, rxcall,
         &msg, call->request_size,
         afs_notify_end_request_tx);
 if (ret < 0)
  goto error_do_abort;

 if (call->send_pages) {
  ret = afs_send_pages(call, &msg);
  if (ret < 0)
   goto error_do_abort;
 }







 return;

error_do_abort:
 if (ret != -ECONNABORTED) {
  rxrpc_kernel_abort_call(call->net->socket, rxcall,
     RX_USER_ABORT, ret, "KSD");
 } else {
  iov_iter_kvec(&msg.msg_iter, READ, ((void*)0), 0, 0);
  rxrpc_kernel_recv_data(call->net->socket, rxcall,
           &msg.msg_iter, 0,
           &call->abort_code, &call->service_id);
  ac->abort_code = call->abort_code;
  ac->responded = 1;
 }
 call->error = ret;
 trace_afs_call_done(call);
error_kill_call:
 if (call->type->done)
  call->type->done(call);





 if (call->rxcall) {
  rxrpc_kernel_end_call(call->net->socket, call->rxcall);
  call->rxcall = ((void*)0);
 }
 if (call->async) {
  if (cancel_work_sync(&call->async_work))
   afs_put_call(call);
  afs_put_call(call);
 }

 ac->error = ret;
 call->state = AFS_CALL_COMPLETE;
 _leave(" = %d", ret);
}
