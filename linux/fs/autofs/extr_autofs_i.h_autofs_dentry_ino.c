
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_fsdata; } ;
struct autofs_info {int dummy; } ;



__attribute__((used)) static inline struct autofs_info *autofs_dentry_ino(struct dentry *dentry)
{
 return (struct autofs_info *)(dentry->d_fsdata);
}
