
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver {int rcu; int usage; } ;
struct afs_net {int dummy; } ;


 int afs_vlserver_rcu ;
 unsigned int atomic_dec_return (int *) ;
 int call_rcu (int *,int ) ;

void afs_put_vlserver(struct afs_net *net, struct afs_vlserver *vlserver)
{
 if (vlserver) {
  unsigned int u = atomic_dec_return(&vlserver->usage);


  if (u == 0)
   call_rcu(&vlserver->rcu, afs_vlserver_rcu);
 }
}
