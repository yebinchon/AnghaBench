
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int servers_outstanding; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up_var (int *) ;

__attribute__((used)) static void afs_dec_servers_outstanding(struct afs_net *net)
{
 if (atomic_dec_and_test(&net->servers_outstanding))
  wake_up_var(&net->servers_outstanding);
}
