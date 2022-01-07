
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int V9FS_ACCESS_CLIENT ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACL_MASK ;
 int V9FS_POSIX_ACL ;
 struct posix_acl* v9fs_get_cached_acl (struct inode*,int) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

struct posix_acl *v9fs_iop_get_acl(struct inode *inode, int type)
{
 struct v9fs_session_info *v9ses;

 v9ses = v9fs_inode2v9ses(inode);
 if (((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) ||
   ((v9ses->flags & V9FS_ACL_MASK) != V9FS_POSIX_ACL)) {




  return ((void*)0);
 }
 return v9fs_get_cached_acl(inode, type);

}
