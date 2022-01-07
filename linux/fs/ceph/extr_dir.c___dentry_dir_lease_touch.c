
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int dentry_dir_leases; } ;
struct ceph_dentry_info {int flags; int lease_list; int time; scalar_t__ lease_gen; } ;


 int CEPH_DENTRY_LEASE_LIST ;
 int CEPH_DENTRY_REFERENCED ;
 int jiffies ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static void __dentry_dir_lease_touch(struct ceph_mds_client* mdsc,
         struct ceph_dentry_info *di)
{
 di->flags &= ~(CEPH_DENTRY_LEASE_LIST | CEPH_DENTRY_REFERENCED);
 di->lease_gen = 0;
 di->time = jiffies;
 list_move_tail(&di->lease_list, &mdsc->dentry_dir_leases);
}
