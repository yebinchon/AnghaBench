
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_permits {int rcu; int hash_node; int usage; } ;


 int afs_permits_lock ;
 int afs_permits_rcu ;
 int call_rcu (int *,int ) ;
 int hash_del_rcu (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void afs_put_permits(struct afs_permits *permits)
{
 if (permits && refcount_dec_and_test(&permits->usage)) {
  spin_lock(&afs_permits_lock);
  hash_del_rcu(&permits->hash_node);
  spin_unlock(&afs_permits_lock);
  call_rcu(&permits->rcu, afs_permits_rcu);
 }
}
