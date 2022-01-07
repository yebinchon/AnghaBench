
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_dentry_info {int dummy; } ;
struct dentry {struct ecryptfs_dentry_info* d_fsdata; } ;



__attribute__((used)) static inline void
ecryptfs_set_dentry_private(struct dentry *dentry,
       struct ecryptfs_dentry_info *dentry_info)
{
 dentry->d_fsdata = dentry_info;
}
