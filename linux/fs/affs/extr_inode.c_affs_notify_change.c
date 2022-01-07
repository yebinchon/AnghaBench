
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_ino; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;


 int AFFS_MOUNT_SF_IMMUTABLE ;
 int AFFS_MOUNT_SF_SETMODE ;
 TYPE_1__* AFFS_SB (int ) ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 int SF_QUIET ;
 int SF_SETGID ;
 int SF_SETUID ;
 int affs_mode_to_prot (struct inode*) ;
 scalar_t__ affs_test_opt (int,int ) ;
 int affs_truncate (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int pr_debug (char*,int ,int) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

int
affs_notify_change(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int error;

 pr_debug("notify_change(%lu,0x%x)\n", inode->i_ino, attr->ia_valid);

 error = setattr_prepare(dentry, attr);
 if (error)
  goto out;

 if (((attr->ia_valid & ATTR_UID) &&
       affs_test_opt(AFFS_SB(inode->i_sb)->s_flags, SF_SETUID)) ||
     ((attr->ia_valid & ATTR_GID) &&
       affs_test_opt(AFFS_SB(inode->i_sb)->s_flags, SF_SETGID)) ||
     ((attr->ia_valid & ATTR_MODE) &&
      (AFFS_SB(inode->i_sb)->s_flags &
       (AFFS_MOUNT_SF_SETMODE | AFFS_MOUNT_SF_IMMUTABLE)))) {
  if (!affs_test_opt(AFFS_SB(inode->i_sb)->s_flags, SF_QUIET))
   error = -EPERM;
  goto out;
 }

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  error = inode_newsize_ok(inode, attr->ia_size);
  if (error)
   return error;

  truncate_setsize(inode, attr->ia_size);
  affs_truncate(inode);
 }

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);

 if (attr->ia_valid & ATTR_MODE)
  affs_mode_to_prot(inode);
out:
 return error;
}
