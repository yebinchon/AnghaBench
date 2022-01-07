
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int flags; int name; } ;
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int i_mode; TYPE_1__* i_sb; } ;
struct iattr {int ia_valid; int ia_mode; int member_0; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_user_ns; } ;




 int ATTR_MODE ;
 int BUG () ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int V9FS_ACCESS_CLIENT ;
 int V9FS_ACCESS_MASK ;
 int init_user_ns ;
 int inode_owner_or_capable (struct inode*) ;
 struct posix_acl* posix_acl_from_xattr (int *,void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_update_mode (struct inode*,int *,struct posix_acl**) ;
 int posix_acl_valid (int ,struct posix_acl*) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 int v9fs_vfs_setattr_dotl (struct dentry*,struct iattr*) ;
 int v9fs_xattr_set (struct dentry*,int ,void const*,size_t,int) ;

__attribute__((used)) static int v9fs_xattr_set_acl(const struct xattr_handler *handler,
         struct dentry *dentry, struct inode *inode,
         const char *name, const void *value,
         size_t size, int flags)
{
 int retval;
 struct posix_acl *acl;
 struct v9fs_session_info *v9ses;

 v9ses = v9fs_dentry2v9ses(dentry);




 if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
  return v9fs_xattr_set(dentry, handler->name, value, size,
          flags);

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;
 if (!inode_owner_or_capable(inode))
  return -EPERM;
 if (value) {

  acl = posix_acl_from_xattr(&init_user_ns, value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  else if (acl) {
   retval = posix_acl_valid(inode->i_sb->s_user_ns, acl);
   if (retval)
    goto err_out;
  }
 } else
  acl = ((void*)0);

 switch (handler->flags) {
 case 129:
  if (acl) {
   struct iattr iattr = { 0 };
   struct posix_acl *old_acl = acl;

   retval = posix_acl_update_mode(inode, &iattr.ia_mode, &acl);
   if (retval)
    goto err_out;
   if (!acl) {





    posix_acl_release(old_acl);
    value = ((void*)0);
    size = 0;
   }
   iattr.ia_valid = ATTR_MODE;




   v9fs_vfs_setattr_dotl(dentry, &iattr);
  }
  break;
 case 128:
  if (!S_ISDIR(inode->i_mode)) {
   retval = acl ? -EINVAL : 0;
   goto err_out;
  }
  break;
 default:
  BUG();
 }
 retval = v9fs_xattr_set(dentry, handler->name, value, size, flags);
 if (!retval)
  set_cached_acl(inode, handler->flags, acl);
err_out:
 posix_acl_release(acl);
 return retval;
}
