
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int dummy; } ;
struct afs_call {int * rxcall; } ;


 int afs_put_call (struct afs_call*) ;

__attribute__((used)) static void afs_rx_discard_new_call(struct rxrpc_call *rxcall,
        unsigned long user_call_ID)
{
 struct afs_call *call = (struct afs_call *)user_call_ID;

 call->rxcall = ((void*)0);
 afs_put_call(call);
}
