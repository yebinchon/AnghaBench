
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_call {int operation_ID; int * type; int service_id; int rxcall; TYPE_1__* net; int epoch; } ;
struct TYPE_2__ {int socket; } ;
 int YFS_CM_SERVICE ;
 int _enter (char*,int ,int) ;
 int afs_SRXCBCallBack ;
 int afs_SRXCBInitCallBackState ;
 int afs_SRXCBInitCallBackState3 ;
 int afs_SRXCBProbe ;
 int afs_SRXCBProbeUuid ;
 int afs_SRXCBTellMeAboutYourself ;
 int afs_SRXYFSCB_CallBack ;
 int rxrpc_kernel_get_epoch (int ,int ) ;

bool afs_cm_incoming_call(struct afs_call *call)
{
 _enter("{%u, CB.OP %u}", call->service_id, call->operation_ID);

 call->epoch = rxrpc_kernel_get_epoch(call->net->socket, call->rxcall);

 switch (call->operation_ID) {
 case 134:
  call->type = &afs_SRXCBCallBack;
  return 1;
 case 133:
  call->type = &afs_SRXCBInitCallBackState;
  return 1;
 case 132:
  call->type = &afs_SRXCBInitCallBackState3;
  return 1;
 case 131:
  call->type = &afs_SRXCBProbe;
  return 1;
 case 130:
  call->type = &afs_SRXCBProbeUuid;
  return 1;
 case 129:
  call->type = &afs_SRXCBTellMeAboutYourself;
  return 1;
 case 128:
  if (call->service_id != YFS_CM_SERVICE)
   return 0;
  call->type = &afs_SRXYFSCB_CallBack;
  return 1;
 default:
  return 0;
 }
}
