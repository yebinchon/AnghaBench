
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vlserver_list {int nr_servers; TYPE_1__* servers; int usage; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int server; } ;


 int afs_put_vlserver (struct afs_net*,int ) ;
 unsigned int atomic_dec_return (int *) ;
 int kfree_rcu (struct afs_vlserver_list*,int ) ;
 int rcu ;

void afs_put_vlserverlist(struct afs_net *net, struct afs_vlserver_list *vllist)
{
 if (vllist) {
  unsigned int u = atomic_dec_return(&vllist->usage);


  if (u == 0) {
   int i;

   for (i = 0; i < vllist->nr_servers; i++) {
    afs_put_vlserver(net, vllist->servers[i].server);
   }
   kfree_rcu(vllist, rcu);
  }
 }
}
