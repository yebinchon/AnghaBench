
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; int msg_iter; scalar_t__ msg_namelen; int * msg_name; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
struct afs_net {int socket; } ;
struct afs_call {int rxcall; struct afs_net* net; } ;


 int ENOMEM ;
 int RX_USER_ABORT ;
 int WRITE ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_notify_end_reply_tx ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t) ;
 int rxrpc_kernel_abort_call (int ,int ,int ,int,char*) ;
 int rxrpc_kernel_send_data (int ,int ,struct msghdr*,size_t,int ) ;
 int rxrpc_kernel_set_tx_length (int ,int ,size_t) ;

void afs_send_simple_reply(struct afs_call *call, const void *buf, size_t len)
{
 struct afs_net *net = call->net;
 struct msghdr msg;
 struct kvec iov[1];
 int n;

 _enter("");

 rxrpc_kernel_set_tx_length(net->socket, call->rxcall, len);

 iov[0].iov_base = (void *) buf;
 iov[0].iov_len = len;
 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 iov_iter_kvec(&msg.msg_iter, WRITE, iov, 1, len);
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 n = rxrpc_kernel_send_data(net->socket, call->rxcall, &msg, len,
       afs_notify_end_reply_tx);
 if (n >= 0) {

  _leave(" [replied]");
  return;
 }

 if (n == -ENOMEM) {
  _debug("oom");
  rxrpc_kernel_abort_call(net->socket, call->rxcall,
     RX_USER_ABORT, -ENOMEM, "KOO");
 }
 _leave(" [error]");
}
