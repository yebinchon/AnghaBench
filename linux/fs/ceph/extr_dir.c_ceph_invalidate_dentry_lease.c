
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;
struct ceph_dentry_info {scalar_t__ lease_shared_gen; int time; } ;


 int __dentry_lease_unlist (struct ceph_dentry_info*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_invalidate_dentry_lease(struct dentry *dentry)
{
 struct ceph_dentry_info *di = ceph_dentry(dentry);
 spin_lock(&dentry->d_lock);
 di->time = jiffies;
 di->lease_shared_gen = 0;
 __dentry_lease_unlist(di);
 spin_unlock(&dentry->d_lock);
}
