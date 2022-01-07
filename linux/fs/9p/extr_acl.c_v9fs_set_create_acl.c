
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int set_cached_acl (struct inode*,int ,struct posix_acl*) ;
 int v9fs_set_acl (struct p9_fid*,int ,struct posix_acl*) ;

int v9fs_set_create_acl(struct inode *inode, struct p9_fid *fid,
   struct posix_acl *dacl, struct posix_acl *acl)
{
 set_cached_acl(inode, ACL_TYPE_DEFAULT, dacl);
 set_cached_acl(inode, ACL_TYPE_ACCESS, acl);
 v9fs_set_acl(fid, ACL_TYPE_DEFAULT, dacl);
 v9fs_set_acl(fid, ACL_TYPE_ACCESS, acl);
 return 0;
}
