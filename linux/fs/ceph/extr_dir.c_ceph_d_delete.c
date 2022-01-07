
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct ceph_dentry_info {int dummy; } ;


 scalar_t__ CEPH_NOSNAP ;
 scalar_t__ __dentry_lease_is_valid (struct ceph_dentry_info*) ;
 scalar_t__ __dir_lease_try_check (struct dentry const*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry const*) ;
 scalar_t__ ceph_snap (int ) ;
 int d_inode (struct dentry const*) ;
 scalar_t__ d_really_is_negative (struct dentry const*) ;

__attribute__((used)) static int ceph_d_delete(const struct dentry *dentry)
{
 struct ceph_dentry_info *di;


 if (d_really_is_negative(dentry))
  return 0;
 if (ceph_snap(d_inode(dentry)) != CEPH_NOSNAP)
  return 0;

 di = ceph_dentry(dentry);
 if (di) {
  if (__dentry_lease_is_valid(di))
   return 0;
  if (__dir_lease_try_check(dentry))
   return 0;
 }
 return 1;
}
