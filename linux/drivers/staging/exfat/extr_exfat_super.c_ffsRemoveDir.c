
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {scalar_t__ vol_type; scalar_t__ root_dir; int cluster_size_bits; int v_sem; scalar_t__ dev_ejected; TYPE_2__* fs_func; } ;
struct TYPE_4__ {scalar_t__ dir; int size; int flags; } ;
struct file_id_t {int entry; scalar_t__ start_clu; int size; int flags; TYPE_1__ dir; } ;
struct chain_t {scalar_t__ dir; int size; int flags; } ;
typedef int s32 ;
struct TYPE_6__ {struct fs_info_t fs_info; } ;
struct TYPE_5__ {int (* free_cluster ) (struct super_block*,struct chain_t*,int) ;} ;


 scalar_t__ CLUSTER_32 (int ) ;
 scalar_t__ EXFAT ;
 TYPE_3__* EXFAT_SB (struct super_block*) ;
 int FFS_FILEEXIST ;
 int FFS_INVALIDFID ;
 int FFS_MEDIAERR ;
 int FFS_PERMISSIONERR ;
 int FFS_SUCCESS ;
 int VOL_CLEAN ;
 int VOL_DIRTY ;
 int down (int *) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 int is_dir_empty (struct super_block*,struct chain_t*) ;
 int remove_file (struct inode*,struct chain_t*,int) ;
 int stub1 (struct super_block*,struct chain_t*,int) ;
 int up (int *) ;

__attribute__((used)) static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
{
 s32 dentry;
 int ret = FFS_SUCCESS;
 struct chain_t dir, clu_to_free;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);


 if (!fid)
  return FFS_INVALIDFID;

 dir.dir = fid->dir.dir;
 dir.size = fid->dir.size;
 dir.flags = fid->dir.flags;

 dentry = fid->entry;


 if (p_fs->vol_type != EXFAT) {
  if ((dir.dir != p_fs->root_dir) && (dentry < 2))
   return FFS_PERMISSIONERR;
 }


 down(&p_fs->v_sem);

 clu_to_free.dir = fid->start_clu;
 clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
 clu_to_free.flags = fid->flags;

 if (!is_dir_empty(sb, &clu_to_free)) {
  ret = FFS_FILEEXIST;
  goto out;
 }

 fs_set_vol_flags(sb, VOL_DIRTY);


 remove_file(inode, &dir, dentry);


 p_fs->fs_func->free_cluster(sb, &clu_to_free, 1);

 fid->size = 0;
 fid->start_clu = CLUSTER_32(~0);
 fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;






 if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;

out:

 up(&p_fs->v_sem);

 return ret;
}
