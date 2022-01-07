
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int EIO ;
 int IS_ERR (struct posix_acl*) ;
 int V9FS_ACCESS_CLIENT ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACL_MASK ;
 int V9FS_POSIX_ACL ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 struct posix_acl* __v9fs_get_acl (struct p9_fid*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int set_cached_acl (struct inode*,int ,struct posix_acl*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

int v9fs_get_acl(struct inode *inode, struct p9_fid *fid)
{
 int retval = 0;
 struct posix_acl *pacl, *dacl;
 struct v9fs_session_info *v9ses;

 v9ses = v9fs_inode2v9ses(inode);
 if (((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) ||
   ((v9ses->flags & V9FS_ACL_MASK) != V9FS_POSIX_ACL)) {
  set_cached_acl(inode, ACL_TYPE_DEFAULT, ((void*)0));
  set_cached_acl(inode, ACL_TYPE_ACCESS, ((void*)0));
  return 0;
 }

 dacl = __v9fs_get_acl(fid, XATTR_NAME_POSIX_ACL_DEFAULT);
 pacl = __v9fs_get_acl(fid, XATTR_NAME_POSIX_ACL_ACCESS);

 if (!IS_ERR(dacl) && !IS_ERR(pacl)) {
  set_cached_acl(inode, ACL_TYPE_DEFAULT, dacl);
  set_cached_acl(inode, ACL_TYPE_ACCESS, pacl);
 } else
  retval = -EIO;

 if (!IS_ERR(dacl))
  posix_acl_release(dacl);

 if (!IS_ERR(pacl))
  posix_acl_release(pacl);

 return retval;
}
