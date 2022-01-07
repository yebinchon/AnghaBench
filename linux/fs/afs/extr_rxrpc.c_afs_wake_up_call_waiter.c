
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_call {int need_attention; int waitq; } ;


 int wake_up (int *) ;

__attribute__((used)) static void afs_wake_up_call_waiter(struct sock *sk, struct rxrpc_call *rxcall,
        unsigned long call_user_ID)
{
 struct afs_call *call = (struct afs_call *)call_user_ID;

 call->need_attention = 1;
 wake_up(&call->waitq);
}
