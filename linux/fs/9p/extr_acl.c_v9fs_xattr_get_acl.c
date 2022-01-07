
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; int name; } ;
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENODATA ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int V9FS_ACCESS_CLIENT ;
 int V9FS_ACCESS_MASK ;
 int init_user_ns ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (int *,struct posix_acl*,void*,size_t) ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 struct posix_acl* v9fs_get_cached_acl (struct inode*,int ) ;
 int v9fs_xattr_get (struct dentry*,int ,void*,size_t) ;

__attribute__((used)) static int v9fs_xattr_get_acl(const struct xattr_handler *handler,
         struct dentry *dentry, struct inode *inode,
         const char *name, void *buffer, size_t size)
{
 struct v9fs_session_info *v9ses;
 struct posix_acl *acl;
 int error;

 v9ses = v9fs_dentry2v9ses(dentry);



 if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
  return v9fs_xattr_get(dentry, handler->name, buffer, size);

 acl = v9fs_get_cached_acl(inode, handler->flags);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl == ((void*)0))
  return -ENODATA;
 error = posix_acl_to_xattr(&init_user_ns, acl, buffer, size);
 posix_acl_release(acl);

 return error;
}
