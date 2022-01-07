
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_sb; } ;
struct ceph_mds_client {int dentry_list_lock; int dentry_leases; } ;
struct ceph_dentry_info {int flags; int lease_list; struct dentry* dentry; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;


 int CEPH_DENTRY_LEASE_LIST ;
 int CEPH_DENTRY_REFERENCED ;
 int CEPH_DENTRY_SHRINK_LIST ;
 TYPE_1__* ceph_sb_to_client (int ) ;
 int dout (char*,struct ceph_dentry_info*,struct dentry*,struct dentry*) ;
 int list_move_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __ceph_dentry_lease_touch(struct ceph_dentry_info *di)
{
 struct dentry *dn = di->dentry;
 struct ceph_mds_client *mdsc;

 dout("dentry_lease_touch %p %p '%pd'\n", di, dn, dn);

 di->flags |= CEPH_DENTRY_LEASE_LIST;
 if (di->flags & CEPH_DENTRY_SHRINK_LIST) {
  di->flags |= CEPH_DENTRY_REFERENCED;
  return;
 }

 mdsc = ceph_sb_to_client(dn->d_sb)->mdsc;
 spin_lock(&mdsc->dentry_list_lock);
 list_move_tail(&di->lease_list, &mdsc->dentry_leases);
 spin_unlock(&mdsc->dentry_list_lock);
}
