
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_call {int dummy; } ;


 int AFS_CALL_SV_AWAIT_ACK ;
 int AFS_CALL_SV_REPLYING ;
 int afs_set_call_state (struct afs_call*,int ,int ) ;

__attribute__((used)) static void afs_notify_end_reply_tx(struct sock *sock,
        struct rxrpc_call *rxcall,
        unsigned long call_user_ID)
{
 struct afs_call *call = (struct afs_call *)call_user_ID;

 afs_set_call_state(call, AFS_CALL_SV_REPLYING, AFS_CALL_SV_AWAIT_ACK);
}
