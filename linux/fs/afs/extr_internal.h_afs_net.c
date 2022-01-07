
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct afs_net {int dummy; } ;


 int afs_net_id ;
 struct afs_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline struct afs_net *afs_net(struct net *net)
{
 return net_generic(net, afs_net_id);
}
