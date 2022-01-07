
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iov_iter {int dummy; } ;
struct afs_net {int socket; } ;
struct afs_call {int error; int state; int service_id; int rxcall; TYPE_1__* type; struct iov_iter* _iter; struct afs_net* net; } ;
typedef enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;
struct TYPE_2__ {int name; } ;



 int AFS_CALL_CL_PROC_REPLY ;


 int AFS_CALL_SV_REPLYING ;
 int EAGAIN ;
 int READ_ONCE (int ) ;
 int _enter (char*,int ,int ,int) ;
 int afs_io_error (struct afs_call*,int ) ;
 int afs_io_error_extract ;
 int afs_set_call_complete (struct afs_call*,int,int ) ;
 int afs_set_call_state (struct afs_call*,int,int ) ;
 int iov_iter_count (struct iov_iter*) ;
 int kdebug (char*,int ) ;
 int rxrpc_kernel_recv_data (int ,int ,struct iov_iter*,int,int *,int *) ;

int afs_extract_data(struct afs_call *call, bool want_more)
{
 struct afs_net *net = call->net;
 struct iov_iter *iter = call->_iter;
 enum afs_call_state state;
 u32 remote_abort = 0;
 int ret;

 _enter("{%s,%zu},%d", call->type->name, iov_iter_count(iter), want_more);

 ret = rxrpc_kernel_recv_data(net->socket, call->rxcall, iter,
         want_more, &remote_abort,
         &call->service_id);
 if (ret == 0 || ret == -EAGAIN)
  return ret;

 state = READ_ONCE(call->state);
 if (ret == 1) {
  switch (state) {
  case 130:
   afs_set_call_state(call, state, AFS_CALL_CL_PROC_REPLY);
   break;
  case 128:
   afs_set_call_state(call, state, AFS_CALL_SV_REPLYING);
   break;
  case 129:
   kdebug("prem complete %d", call->error);
   return afs_io_error(call, afs_io_error_extract);
  default:
   break;
  }
  return 0;
 }

 afs_set_call_complete(call, ret, remote_abort);
 return ret;
}
