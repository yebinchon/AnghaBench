
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_call {TYPE_1__* type; int tmp; int operation_ID; int _iter; } ;
struct TYPE_2__ {int (* deliver ) (struct afs_call*) ;} ;


 int AFS_CALL_SV_AWAIT_OP_ID ;
 int AFS_CALL_SV_AWAIT_REQUEST ;
 int ENOTSUPP ;
 int _enter (char*,int ) ;
 int afs_cm_incoming_call (struct afs_call*) ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_set_call_state (struct afs_call*,int ,int ) ;
 int iov_iter_count (int ) ;
 int ntohl (int ) ;
 int stub1 (struct afs_call*) ;
 int trace_afs_cb_call (struct afs_call*) ;

__attribute__((used)) static int afs_deliver_cm_op_id(struct afs_call *call)
{
 int ret;

 _enter("{%zu}", iov_iter_count(call->_iter));


 ret = afs_extract_data(call, 1);
 if (ret < 0)
  return ret;

 call->operation_ID = ntohl(call->tmp);
 afs_set_call_state(call, AFS_CALL_SV_AWAIT_OP_ID, AFS_CALL_SV_AWAIT_REQUEST);



 if (!afs_cm_incoming_call(call))
  return -ENOTSUPP;

 trace_afs_cb_call(call);



 return call->type->deliver(call);
}
