
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {scalar_t__ s_element; } ;
struct configfs_attribute {int dummy; } ;



__attribute__((used)) static inline struct configfs_attribute * to_attr(struct dentry * dentry)
{
 struct configfs_dirent * sd = dentry->d_fsdata;
 return ((struct configfs_attribute *) sd->s_element);
}
