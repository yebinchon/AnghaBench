
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int tv_sec; } ;
struct inode {int i_mode; int i_ctime; int i_atime; TYPE_1__ i_mtime; struct super_block* i_sb; } ;
struct iattr {unsigned int ia_valid; int ia_ctime; int ia_atime; TYPE_1__ ia_mtime; int ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int attr; } ;
struct TYPE_5__ {int s_gid; int s_uid; } ;


 TYPE_3__* ADFS_I (struct inode*) ;
 TYPE_2__* ADFS_SB (struct super_block*) ;
 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_SIZE ;
 unsigned int ATTR_UID ;
 int EPERM ;
 int adfs_atts2mode (struct super_block*,struct inode*) ;
 int adfs_mode2atts (struct super_block*,struct inode*) ;
 int adfs_unix2adfs_time (struct inode*,int ) ;
 struct inode* d_inode (struct dentry*) ;
 int gid_eq (int ,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,int ) ;
 int uid_eq (int ,int ) ;

int
adfs_notify_change(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 struct super_block *sb = inode->i_sb;
 unsigned int ia_valid = attr->ia_valid;
 int error;

 error = setattr_prepare(dentry, attr);





 if ((ia_valid & ATTR_UID && !uid_eq(attr->ia_uid, ADFS_SB(sb)->s_uid)) ||
     (ia_valid & ATTR_GID && !gid_eq(attr->ia_gid, ADFS_SB(sb)->s_gid)))
  error = -EPERM;

 if (error)
  goto out;


 if (ia_valid & ATTR_SIZE)
  truncate_setsize(inode, attr->ia_size);

 if (ia_valid & ATTR_MTIME) {
  inode->i_mtime = attr->ia_mtime;
  adfs_unix2adfs_time(inode, attr->ia_mtime.tv_sec);
 }




 if (ia_valid & ATTR_ATIME)
  inode->i_atime = attr->ia_atime;
 if (ia_valid & ATTR_CTIME)
  inode->i_ctime = attr->ia_ctime;
 if (ia_valid & ATTR_MODE) {
  ADFS_I(inode)->attr = adfs_mode2atts(sb, inode);
  inode->i_mode = adfs_atts2mode(sb, inode);
 }





 if (ia_valid & (ATTR_SIZE | ATTR_MTIME | ATTR_MODE))
  mark_inode_dirty(inode);
out:
 return error;
}
