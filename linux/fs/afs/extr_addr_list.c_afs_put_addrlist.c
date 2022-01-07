
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_addr_list {int rcu; int usage; } ;
typedef int rcu_callback_t ;


 int call_rcu (int *,int ) ;
 scalar_t__ kfree ;
 scalar_t__ refcount_dec_and_test (int *) ;

void afs_put_addrlist(struct afs_addr_list *alist)
{
 if (alist && refcount_dec_and_test(&alist->usage))
  call_rcu(&alist->rcu, (rcu_callback_t)kfree);
}
