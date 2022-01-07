
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int v9fs_set_create_acl(struct inode *inode,
          struct p9_fid *fid,
          struct posix_acl *dacl,
          struct posix_acl *acl)
{
 return 0;
}
