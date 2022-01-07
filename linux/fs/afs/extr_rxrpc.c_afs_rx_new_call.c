
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_net {int charge_preallocation_work; } ;


 struct afs_net* afs_sock2net (struct sock*) ;
 int afs_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void afs_rx_new_call(struct sock *sk, struct rxrpc_call *rxcall,
       unsigned long user_call_ID)
{
 struct afs_net *net = afs_sock2net(sk);

 queue_work(afs_wq, &net->charge_preallocation_work);
}
