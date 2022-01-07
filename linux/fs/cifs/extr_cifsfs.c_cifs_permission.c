
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_NO_PERM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EACCES ;
 int MAY_EXEC ;
 int execute_ok (struct inode*) ;
 int generic_permission (struct inode*,int) ;

__attribute__((used)) static int cifs_permission(struct inode *inode, int mask)
{
 struct cifs_sb_info *cifs_sb;

 cifs_sb = CIFS_SB(inode->i_sb);

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_PERM) {
  if ((mask & MAY_EXEC) && !execute_ok(inode))
   return -EACCES;
  else
   return 0;
 } else



  return generic_permission(inode, mask);
}
