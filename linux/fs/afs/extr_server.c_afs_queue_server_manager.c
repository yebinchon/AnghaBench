
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int fs_manager; } ;


 int afs_dec_servers_outstanding (struct afs_net*) ;
 int afs_inc_servers_outstanding (struct afs_net*) ;
 int afs_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void afs_queue_server_manager(struct afs_net *net)
{
 afs_inc_servers_outstanding(net);
 if (!queue_work(afs_wq, &net->fs_manager))
  afs_dec_servers_outstanding(net);
}
