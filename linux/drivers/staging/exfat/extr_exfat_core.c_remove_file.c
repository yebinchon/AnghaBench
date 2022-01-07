
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {struct fs_func* fs_func; } ;
struct fs_func {scalar_t__ (* count_ext_entries ) (struct super_block*,struct chain_t*,scalar_t__,struct dentry_t*) ;int (* delete_dir_entry ) (struct super_block*,struct chain_t*,scalar_t__,int ,scalar_t__) ;} ;
struct dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int buf_lock (struct super_block*,int ) ;
 int buf_unlock (struct super_block*,int ) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,struct chain_t*,scalar_t__,int *) ;
 scalar_t__ stub1 (struct super_block*,struct chain_t*,scalar_t__,struct dentry_t*) ;
 int stub2 (struct super_block*,struct chain_t*,scalar_t__,int ,scalar_t__) ;

void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry)
{
 s32 num_entries;
 sector_t sector;
 struct dentry_t *ep;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct fs_func *fs_func = p_fs->fs_func;

 ep = get_entry_in_dir(sb, p_dir, entry, &sector);
 if (!ep)
  return;

 buf_lock(sb, sector);


 num_entries = fs_func->count_ext_entries(sb, p_dir, entry, ep);
 if (num_entries < 0) {
  buf_unlock(sb, sector);
  return;
 }
 num_entries++;

 buf_unlock(sb, sector);


 fs_func->delete_dir_entry(sb, p_dir, entry, 0, num_entries);
}
