
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct timestamp_t {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size_bits; int cluster_size; scalar_t__ vol_type; int v_sem; scalar_t__ dev_ejected; TYPE_1__* fs_func; } ;
struct file_id_t {scalar_t__ type; int rwoffset; int size; scalar_t__ start_clu; int flags; int hint_last_off; scalar_t__ hint_last_clu; int attr; int entry; int dir; } ;
struct entry_set_cache_t {int dummy; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; scalar_t__ size; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bd_info_t {int sector_size_bits; int sector_size_mask; int sector_size; } ;
typedef scalar_t__ sector_t ;
typedef int s32 ;
struct TYPE_4__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;
struct TYPE_3__ {int (* alloc_cluster ) (struct super_block*,int,struct chain_t*) ;int (* get_entry_flag ) (struct dentry_t*) ;int (* get_entry_size ) (struct dentry_t*) ;scalar_t__ (* get_entry_clu0 ) (struct dentry_t*) ;int (* set_entry_clu0 ) (struct dentry_t*,scalar_t__) ;int (* set_entry_size ) (struct dentry_t*,int) ;int (* set_entry_flag ) (struct dentry_t*,int) ;int (* set_entry_attr ) (struct dentry_t*,int ) ;int (* set_entry_time ) (struct dentry_t*,int ,int ) ;} ;


 int ATTR_ARCHIVE ;
 scalar_t__ CLUSTER_32 (int ) ;
 int ES_ALL_ENTRIES ;
 scalar_t__ EXFAT ;
 TYPE_2__* EXFAT_SB (struct super_block*) ;
 int FAT_read (struct super_block*,scalar_t__,scalar_t__*) ;
 int FAT_write (struct super_block*,scalar_t__,scalar_t__) ;
 int FFS_ERROR ;
 int FFS_FULL ;
 int FFS_INVALIDFID ;
 int FFS_MEDIAERR ;
 int FFS_PERMISSIONERR ;
 int FFS_SUCCESS ;
 scalar_t__ START_SECTOR (scalar_t__) ;
 int TM_MODIFY ;
 scalar_t__ TYPE_FILE ;
 int VOL_CLEAN ;
 int VOL_DIRTY ;
 int brelse (struct buffer_head*) ;
 int buf_modify (struct super_block*,scalar_t__) ;
 int down (int *) ;
 int exfat_chain_cont_cluster (struct super_block*,scalar_t__,int) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,int *,int ,scalar_t__*) ;
 struct entry_set_cache_t* get_entry_set_in_dir (struct super_block*,int *,int ,int ,struct dentry_t**) ;
 int memcpy (char*,char*,int) ;
 int release_entry_set (struct entry_set_cache_t*) ;
 int sector_read (struct super_block*,scalar_t__,struct buffer_head**,int) ;
 int sector_write (struct super_block*,scalar_t__,struct buffer_head*,int ) ;
 int stub1 (struct super_block*,int,struct chain_t*) ;
 int stub2 (struct dentry_t*,int ,int ) ;
 int stub3 (struct dentry_t*,int ) ;
 int stub4 (struct dentry_t*) ;
 int stub5 (struct dentry_t*,int) ;
 int stub6 (struct dentry_t*) ;
 int stub7 (struct dentry_t*,int) ;
 scalar_t__ stub8 (struct dentry_t*) ;
 int stub9 (struct dentry_t*,scalar_t__) ;
 int tm_current (struct timestamp_t*) ;
 int up (int *) ;
 int update_dir_checksum_with_entry_set (struct super_block*,struct entry_set_cache_t*) ;

__attribute__((used)) static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
   void *buffer, u64 count, u64 *wcount)
{
 bool modified = 0;
 s32 offset, sec_offset, clu_offset;
 s32 num_clusters, num_alloc, num_alloced = (s32)~0;
 int ret = 0;
 u32 clu, last_clu;
 sector_t LogSector, sector = 0;
 u64 oneblkwrite, write_bytes;
 struct chain_t new_clu;
 struct timestamp_t tm;
 struct dentry_t *ep, *ep2;
 struct entry_set_cache_t *es = ((void*)0);
 struct buffer_head *tmp_bh = ((void*)0);
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);


 if (!fid)
  return FFS_INVALIDFID;


 if (!buffer)
  return FFS_ERROR;


 down(&p_fs->v_sem);


 if (fid->type != TYPE_FILE) {
  ret = FFS_PERMISSIONERR;
  goto out;
 }

 if (fid->rwoffset > fid->size)
  fid->rwoffset = fid->size;

 if (count == 0) {
  if (wcount)
   *wcount = 0;
  ret = FFS_SUCCESS;
  goto out;
 }

 fs_set_vol_flags(sb, VOL_DIRTY);

 if (fid->size == 0)
  num_clusters = 0;
 else
  num_clusters = (s32)((fid->size - 1) >>
         p_fs->cluster_size_bits) + 1;

 write_bytes = 0;

 while (count > 0) {
  clu_offset = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
  clu = last_clu = fid->start_clu;

  if (fid->flags == 0x03) {
   if ((clu_offset > 0) && (clu != CLUSTER_32(~0))) {
    last_clu += clu_offset - 1;

    if (clu_offset == num_clusters)
     clu = CLUSTER_32(~0);
    else
     clu += clu_offset;
   }
  } else {

   if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
       (clu_offset >= fid->hint_last_off)) {
    clu_offset -= fid->hint_last_off;
    clu = fid->hint_last_clu;
   }

   while ((clu_offset > 0) && (clu != CLUSTER_32(~0))) {
    last_clu = clu;

    if (FAT_read(sb, clu, &clu) == -1) {
     ret = FFS_MEDIAERR;
     goto out;
    }
    clu_offset--;
   }
  }

  if (clu == CLUSTER_32(~0)) {
   num_alloc = (s32)((count - 1) >>
       p_fs->cluster_size_bits) + 1;
   new_clu.dir = (last_clu == CLUSTER_32(~0)) ?
     CLUSTER_32(~0) : last_clu + 1;
   new_clu.size = 0;
   new_clu.flags = fid->flags;


   num_alloced = p_fs->fs_func->alloc_cluster(sb,
           num_alloc,
           &new_clu);
   if (num_alloced == 0)
    break;
   if (num_alloced < 0) {
    ret = FFS_MEDIAERR;
    goto out;
   }


   if (last_clu == CLUSTER_32(~0)) {
    if (new_clu.flags == 0x01)
     fid->flags = 0x01;
    fid->start_clu = new_clu.dir;
    modified = 1;
   } else {
    if (new_clu.flags != fid->flags) {
     exfat_chain_cont_cluster(sb,
         fid->start_clu,
         num_clusters);
     fid->flags = 0x01;
     modified = 1;
    }
    if (new_clu.flags == 0x01)
     FAT_write(sb, last_clu, new_clu.dir);
   }

   num_clusters += num_alloced;
   clu = new_clu.dir;
  }


  fid->hint_last_off = (s32)(fid->rwoffset >>
        p_fs->cluster_size_bits);
  fid->hint_last_clu = clu;


  offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));


  sec_offset = offset >> p_bd->sector_size_bits;


  offset &= p_bd->sector_size_mask;

  LogSector = START_SECTOR(clu) + sec_offset;

  oneblkwrite = (u64)(p_bd->sector_size - offset);
  if (oneblkwrite > count)
   oneblkwrite = count;

  if ((offset == 0) && (oneblkwrite == p_bd->sector_size)) {
   if (sector_read(sb, LogSector, &tmp_bh, 0) !=
       FFS_SUCCESS)
    goto err_out;
   memcpy((char *)tmp_bh->b_data,
          (char *)buffer + write_bytes, (s32)oneblkwrite);
   if (sector_write(sb, LogSector, tmp_bh, 0) !=
       FFS_SUCCESS) {
    brelse(tmp_bh);
    goto err_out;
   }
  } else {
   if ((offset > 0) ||
       ((fid->rwoffset + oneblkwrite) < fid->size)) {
    if (sector_read(sb, LogSector, &tmp_bh, 1) !=
        FFS_SUCCESS)
     goto err_out;
   } else {
    if (sector_read(sb, LogSector, &tmp_bh, 0) !=
        FFS_SUCCESS)
     goto err_out;
   }

   memcpy((char *)tmp_bh->b_data + offset,
          (char *)buffer + write_bytes, (s32)oneblkwrite);
   if (sector_write(sb, LogSector, tmp_bh, 0) !=
       FFS_SUCCESS) {
    brelse(tmp_bh);
    goto err_out;
   }
  }

  count -= oneblkwrite;
  write_bytes += oneblkwrite;
  fid->rwoffset += oneblkwrite;

  fid->attr |= ATTR_ARCHIVE;

  if (fid->size < fid->rwoffset) {
   fid->size = fid->rwoffset;
   modified = 1;
  }
 }

 brelse(tmp_bh);


 if (p_fs->vol_type == EXFAT) {
  es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
       ES_ALL_ENTRIES, &ep);
  if (!es)
   goto err_out;
  ep2 = ep + 1;
 } else {
  ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
  if (!ep)
   goto err_out;
  ep2 = ep;
 }

 p_fs->fs_func->set_entry_time(ep, tm_current(&tm), TM_MODIFY);
 p_fs->fs_func->set_entry_attr(ep, fid->attr);

 if (p_fs->vol_type != EXFAT)
  buf_modify(sb, sector);

 if (modified) {
  if (p_fs->fs_func->get_entry_flag(ep2) != fid->flags)
   p_fs->fs_func->set_entry_flag(ep2, fid->flags);

  if (p_fs->fs_func->get_entry_size(ep2) != fid->size)
   p_fs->fs_func->set_entry_size(ep2, fid->size);

  if (p_fs->fs_func->get_entry_clu0(ep2) != fid->start_clu)
   p_fs->fs_func->set_entry_clu0(ep2, fid->start_clu);

  if (p_fs->vol_type != EXFAT)
   buf_modify(sb, sector);
 }

 if (p_fs->vol_type == EXFAT) {
  update_dir_checksum_with_entry_set(sb, es);
  release_entry_set(es);
 }






err_out:

 if (wcount)
  *wcount = write_bytes;

 if (num_alloced == 0)
  ret = FFS_FULL;

 else if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;

out:

 up(&p_fs->v_sem);

 return ret;
}
