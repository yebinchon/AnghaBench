
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_blocks; struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size_bits; scalar_t__ vol_type; int v_sem; scalar_t__ dev_ejected; TYPE_1__* fs_func; } ;
struct file_id_t {int rwoffset; scalar_t__ start_clu; int flags; scalar_t__ hint_last_off; scalar_t__ hint_last_clu; int entry; int dir; } ;
struct entry_set_cache_t {int dummy; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; scalar_t__ size; } ;
typedef int sector_t ;
typedef int s64 ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {int mmu_private; struct file_id_t fid; } ;
struct TYPE_5__ {struct fs_info_t fs_info; } ;
struct TYPE_4__ {scalar_t__ (* alloc_cluster ) (struct super_block*,int,struct chain_t*) ;int (* get_entry_flag ) (struct dentry_t*) ;scalar_t__ (* get_entry_clu0 ) (struct dentry_t*) ;int (* set_entry_clu0 ) (struct dentry_t*,scalar_t__) ;int (* set_entry_flag ) (struct dentry_t*,int) ;} ;


 scalar_t__ CLUSTER_32 (int ) ;
 int ES_ALL_ENTRIES ;
 scalar_t__ EXFAT ;
 TYPE_3__* EXFAT_I (struct inode*) ;
 TYPE_2__* EXFAT_SB (struct super_block*) ;
 int FAT_read (struct super_block*,scalar_t__,scalar_t__*) ;
 int FAT_write (struct super_block*,scalar_t__,scalar_t__) ;
 int FFS_ERROR ;
 int FFS_FULL ;
 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 int VOL_DIRTY ;
 int buf_modify (struct super_block*,int ) ;
 int down (int *) ;
 int exfat_chain_cont_cluster (struct super_block*,scalar_t__,scalar_t__) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,int *,int ,int *) ;
 struct entry_set_cache_t* get_entry_set_in_dir (struct super_block*,int *,int ,int ,struct dentry_t**) ;
 int release_entry_set (struct entry_set_cache_t*) ;
 scalar_t__ stub1 (struct super_block*,int,struct chain_t*) ;
 int stub2 (struct dentry_t*) ;
 int stub3 (struct dentry_t*,int) ;
 scalar_t__ stub4 (struct dentry_t*) ;
 int stub5 (struct dentry_t*,scalar_t__) ;
 int up (int *) ;
 int update_dir_checksum_with_entry_set (struct super_block*,struct entry_set_cache_t*) ;

__attribute__((used)) static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
{
 s32 num_clusters, num_alloced;
 bool modified = 0;
 u32 last_clu;
 int ret = FFS_SUCCESS;
 sector_t sector = 0;
 struct chain_t new_clu;
 struct dentry_t *ep;
 struct entry_set_cache_t *es = ((void*)0);
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct file_id_t *fid = &(EXFAT_I(inode)->fid);


 if (!clu)
  return FFS_ERROR;


 down(&p_fs->v_sem);

 fid->rwoffset = (s64)(clu_offset) << p_fs->cluster_size_bits;

 if (EXFAT_I(inode)->mmu_private == 0)
  num_clusters = 0;
 else
  num_clusters = (s32)((EXFAT_I(inode)->mmu_private - 1) >>
         p_fs->cluster_size_bits) + 1;

 *clu = last_clu = fid->start_clu;

 if (fid->flags == 0x03) {
  if ((clu_offset > 0) && (*clu != CLUSTER_32(~0))) {
   last_clu += clu_offset - 1;

   if (clu_offset == num_clusters)
    *clu = CLUSTER_32(~0);
   else
    *clu += clu_offset;
  }
 } else {

  if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
      (clu_offset >= fid->hint_last_off)) {
   clu_offset -= fid->hint_last_off;
   *clu = fid->hint_last_clu;
  }

  while ((clu_offset > 0) && (*clu != CLUSTER_32(~0))) {
   last_clu = *clu;
   if (FAT_read(sb, *clu, clu) == -1) {
    ret = FFS_MEDIAERR;
    goto out;
   }
   clu_offset--;
  }
 }

 if (*clu == CLUSTER_32(~0)) {
  fs_set_vol_flags(sb, VOL_DIRTY);

  new_clu.dir = (last_clu == CLUSTER_32(~0)) ? CLUSTER_32(~0) :
     last_clu + 1;
  new_clu.size = 0;
  new_clu.flags = fid->flags;


  num_alloced = p_fs->fs_func->alloc_cluster(sb, 1, &new_clu);
  if (num_alloced < 0) {
   ret = FFS_MEDIAERR;
   goto out;
  } else if (num_alloced == 0) {
   ret = FFS_FULL;
   goto out;
  }


  if (last_clu == CLUSTER_32(~0)) {
   if (new_clu.flags == 0x01)
    fid->flags = 0x01;
   fid->start_clu = new_clu.dir;
   modified = 1;
  } else {
   if (new_clu.flags != fid->flags) {
    exfat_chain_cont_cluster(sb, fid->start_clu,
        num_clusters);
    fid->flags = 0x01;
    modified = 1;
   }
   if (new_clu.flags == 0x01)
    FAT_write(sb, last_clu, new_clu.dir);
  }

  num_clusters += num_alloced;
  *clu = new_clu.dir;

  if (p_fs->vol_type == EXFAT) {
   es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
        ES_ALL_ENTRIES, &ep);
   if (!es) {
    ret = FFS_MEDIAERR;
    goto out;
   }

   ep++;
  }


  if (modified) {
   if (p_fs->vol_type != EXFAT) {
    ep = get_entry_in_dir(sb, &(fid->dir),
            fid->entry, &sector);
    if (!ep) {
     ret = FFS_MEDIAERR;
     goto out;
    }
   }

   if (p_fs->fs_func->get_entry_flag(ep) != fid->flags)
    p_fs->fs_func->set_entry_flag(ep, fid->flags);

   if (p_fs->fs_func->get_entry_clu0(ep) != fid->start_clu)
    p_fs->fs_func->set_entry_clu0(ep,
             fid->start_clu);

   if (p_fs->vol_type != EXFAT)
    buf_modify(sb, sector);
  }

  if (p_fs->vol_type == EXFAT) {
   update_dir_checksum_with_entry_set(sb, es);
   release_entry_set(es);
  }


  inode->i_blocks += num_alloced << (p_fs->cluster_size_bits - 9);
 }


 fid->hint_last_off = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
 fid->hint_last_clu = *clu;

 if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;

out:

 up(&p_fs->v_sem);

 return ret;
}
