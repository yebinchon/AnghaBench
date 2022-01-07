
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_2__ {int i_sb; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; } ;
typedef scalar_t__ __u64 ;


 int CIFS_MOUNT_DIRECT_IO ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 scalar_t__ i_size_read (TYPE_1__*) ;
 scalar_t__ is_inode_writable (struct cifsInodeInfo*) ;

bool is_size_safe_to_change(struct cifsInodeInfo *cifsInode, __u64 end_of_file)
{
 if (!cifsInode)
  return 1;

 if (is_inode_writable(cifsInode)) {

  struct cifs_sb_info *cifs_sb;

  cifs_sb = CIFS_SB(cifsInode->vfs_inode.i_sb);
  if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DIRECT_IO) {


   return 1;
  }

  if (i_size_read(&cifsInode->vfs_inode) < end_of_file)
   return 1;

  return 0;
 } else
  return 1;
}
