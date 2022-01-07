
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct ecryptfs_dentry_info {struct path lower_path; } ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline struct path *
ecryptfs_dentry_to_lower_path(struct dentry *dentry)
{
 return &((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path;
}
