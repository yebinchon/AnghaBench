
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct afs_net {int dummy; } ;


 int afs_net_id ;
 struct afs_net* net_generic (int ,int ) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static inline struct afs_net *afs_sock2net(struct sock *sk)
{
 return net_generic(sock_net(sk), afs_net_id);
}
