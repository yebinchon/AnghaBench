
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {TYPE_1__* fs_func; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;
struct TYPE_3__ {int (* set_entry_type ) (struct dentry_t*,int ) ;} ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 int TYPE_DELETED ;
 int buf_modify (struct super_block*,int ) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,struct chain_t*,int,int *) ;
 int stub1 (struct dentry_t*,int ) ;

void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
  s32 entry, s32 order, s32 num_entries)
{
 int i;
 sector_t sector;
 struct dentry_t *ep;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 for (i = num_entries - 1; i >= order; i--) {
  ep = get_entry_in_dir(sb, p_dir, entry - i, &sector);
  if (!ep)
   return;

  p_fs->fs_func->set_entry_type(ep, TYPE_DELETED);
  buf_modify(sb, sector);
 }
}
