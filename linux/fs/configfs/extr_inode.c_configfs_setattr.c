
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_gid; } ;
struct iattr {unsigned int ia_valid; int ia_mode; void* ia_ctime; void* ia_mtime; void* ia_atime; int ia_gid; int ia_uid; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_mode; struct iattr* s_iattr; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_UID ;
 int CAP_FSETID ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int S_ISGID ;
 int capable (int ) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int in_group_p (int ) ;
 struct iattr* kzalloc (int,int ) ;
 int simple_setattr (struct dentry*,struct iattr*) ;
 void* timestamp_truncate (void*,struct inode*) ;

int configfs_setattr(struct dentry * dentry, struct iattr * iattr)
{
 struct inode * inode = d_inode(dentry);
 struct configfs_dirent * sd = dentry->d_fsdata;
 struct iattr * sd_iattr;
 unsigned int ia_valid = iattr->ia_valid;
 int error;

 if (!sd)
  return -EINVAL;

 sd_iattr = sd->s_iattr;
 if (!sd_iattr) {

  sd_iattr = kzalloc(sizeof(struct iattr), GFP_KERNEL);
  if (!sd_iattr)
   return -ENOMEM;

  sd_iattr->ia_mode = sd->s_mode;
  sd_iattr->ia_uid = GLOBAL_ROOT_UID;
  sd_iattr->ia_gid = GLOBAL_ROOT_GID;
  sd_iattr->ia_atime = sd_iattr->ia_mtime =
   sd_iattr->ia_ctime = current_time(inode);
  sd->s_iattr = sd_iattr;
 }


 error = simple_setattr(dentry, iattr);
 if (error)
  return error;

 if (ia_valid & ATTR_UID)
  sd_iattr->ia_uid = iattr->ia_uid;
 if (ia_valid & ATTR_GID)
  sd_iattr->ia_gid = iattr->ia_gid;
 if (ia_valid & ATTR_ATIME)
  sd_iattr->ia_atime = timestamp_truncate(iattr->ia_atime,
            inode);
 if (ia_valid & ATTR_MTIME)
  sd_iattr->ia_mtime = timestamp_truncate(iattr->ia_mtime,
            inode);
 if (ia_valid & ATTR_CTIME)
  sd_iattr->ia_ctime = timestamp_truncate(iattr->ia_ctime,
            inode);
 if (ia_valid & ATTR_MODE) {
  umode_t mode = iattr->ia_mode;

  if (!in_group_p(inode->i_gid) && !capable(CAP_FSETID))
   mode &= ~S_ISGID;
  sd_iattr->ia_mode = sd->s_mode = mode;
 }

 return error;
}
