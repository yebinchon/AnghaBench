
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size_bits; scalar_t__ vol_type; int v_sem; scalar_t__ dev_ejected; TYPE_2__* fs_func; } ;
struct TYPE_4__ {int flags; scalar_t__ size; int dir; } ;
struct file_id_t {int size; int flags; int start_clu; scalar_t__ entry; TYPE_1__ dir; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int flags; scalar_t__ size; int dir; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {struct fs_info_t fs_info; } ;
struct TYPE_5__ {int (* get_entry_attr ) (struct dentry_t*) ;int (* free_cluster ) (struct super_block*,struct chain_t*,int ) ;} ;


 int ATTR_READONLY ;
 int CLUSTER_32 (int ) ;
 scalar_t__ EXFAT ;
 TYPE_3__* EXFAT_SB (struct super_block*) ;
 int FFS_INVALIDFID ;
 int FFS_MEDIAERR ;
 int FFS_PERMISSIONERR ;
 int FFS_SUCCESS ;
 int VOL_CLEAN ;
 int VOL_DIRTY ;
 int down (int *) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,struct chain_t*,scalar_t__,int *) ;
 int remove_file (struct inode*,struct chain_t*,scalar_t__) ;
 int stub1 (struct dentry_t*) ;
 int stub2 (struct super_block*,struct chain_t*,int ) ;
 int up (int *) ;

__attribute__((used)) static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
{
 s32 dentry;
 int ret = FFS_SUCCESS;
 struct chain_t dir, clu_to_free;
 struct dentry_t *ep;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);


 if (!fid)
  return FFS_INVALIDFID;


 down(&p_fs->v_sem);

 dir.dir = fid->dir.dir;
 dir.size = fid->dir.size;
 dir.flags = fid->dir.flags;

 dentry = fid->entry;

 ep = get_entry_in_dir(sb, &dir, dentry, ((void*)0));
 if (!ep) {
  ret = FFS_MEDIAERR;
  goto out;
 }

 if (p_fs->fs_func->get_entry_attr(ep) & ATTR_READONLY) {
  ret = FFS_PERMISSIONERR;
  goto out;
 }
 fs_set_vol_flags(sb, VOL_DIRTY);


 remove_file(inode, &dir, dentry);

 clu_to_free.dir = fid->start_clu;
 clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
 clu_to_free.flags = fid->flags;


 p_fs->fs_func->free_cluster(sb, &clu_to_free, 0);

 fid->size = 0;
 fid->start_clu = CLUSTER_32(~0);
 fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;






 if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;
out:

 up(&p_fs->v_sem);

 return ret;
}
