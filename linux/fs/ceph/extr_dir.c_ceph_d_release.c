
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int * d_fsdata; } ;
struct ceph_dentry_info {scalar_t__ lease_session; } ;


 int __dentry_lease_unlist (struct ceph_dentry_info*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 int ceph_dentry_cachep ;
 int ceph_put_mds_session (scalar_t__) ;
 int dout (char*,struct dentry*) ;
 int kmem_cache_free (int ,struct ceph_dentry_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ceph_d_release(struct dentry *dentry)
{
 struct ceph_dentry_info *di = ceph_dentry(dentry);

 dout("d_release %p\n", dentry);

 spin_lock(&dentry->d_lock);
 __dentry_lease_unlist(di);
 dentry->d_fsdata = ((void*)0);
 spin_unlock(&dentry->d_lock);

 if (di->lease_session)
  ceph_put_mds_session(di->lease_session);
 kmem_cache_free(ceph_dentry_cachep, di);
}
