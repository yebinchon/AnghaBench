
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_mds_client {int dentry_list_lock; } ;
struct ceph_dentry_info {int flags; int lease_list; TYPE_1__* dentry; } ;
struct TYPE_4__ {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int d_sb; } ;


 int CEPH_DENTRY_SHRINK_LIST ;
 TYPE_2__* ceph_sb_to_client (int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __dentry_lease_unlist(struct ceph_dentry_info *di)
{
 struct ceph_mds_client *mdsc;
 if (di->flags & CEPH_DENTRY_SHRINK_LIST)
  return;
 if (list_empty(&di->lease_list))
  return;

 mdsc = ceph_sb_to_client(di->dentry->d_sb)->mdsc;
 spin_lock(&mdsc->dentry_list_lock);
 list_del_init(&di->lease_list);
 spin_unlock(&mdsc->dentry_list_lock);
}
