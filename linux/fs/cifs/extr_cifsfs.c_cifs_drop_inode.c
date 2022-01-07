
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 scalar_t__ generic_drop_inode (struct inode*) ;

__attribute__((used)) static int cifs_drop_inode(struct inode *inode)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);


 return !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) ||
  generic_drop_inode(inode);
}
