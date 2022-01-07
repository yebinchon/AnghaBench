
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_fsdata; } ;
struct ceph_dentry_info {int dummy; } ;



__attribute__((used)) static inline struct ceph_dentry_info *ceph_dentry(const struct dentry *dentry)
{
 return (struct ceph_dentry_info *)dentry->d_fsdata;
}
