
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int * i_acl; int * i_default_acl; int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int __ext2_set_acl (struct inode*,struct posix_acl*,int ) ;
 int posix_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;

int
ext2_init_acl(struct inode *inode, struct inode *dir)
{
 struct posix_acl *default_acl, *acl;
 int error;

 error = posix_acl_create(dir, &inode->i_mode, &default_acl, &acl);
 if (error)
  return error;

 if (default_acl) {
  error = __ext2_set_acl(inode, default_acl, ACL_TYPE_DEFAULT);
  posix_acl_release(default_acl);
 } else {
  inode->i_default_acl = ((void*)0);
 }
 if (acl) {
  if (!error)
   error = __ext2_set_acl(inode, acl, ACL_TYPE_ACCESS);
  posix_acl_release(acl);
 } else {
  inode->i_acl = ((void*)0);
 }
 return error;
}
