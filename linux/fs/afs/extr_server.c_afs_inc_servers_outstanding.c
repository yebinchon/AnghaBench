
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int servers_outstanding; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void afs_inc_servers_outstanding(struct afs_net *net)
{
 atomic_inc(&net->servers_outstanding);
}
