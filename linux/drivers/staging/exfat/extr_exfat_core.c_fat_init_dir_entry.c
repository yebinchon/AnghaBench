
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct dos_dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;


 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 int buf_modify (struct super_block*,int ) ;
 scalar_t__ get_entry_in_dir (struct super_block*,struct chain_t*,int ,int *) ;
 int init_dos_entry (struct dos_dentry_t*,int ,int ) ;

s32 fat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir, s32 entry,
         u32 type, u32 start_clu, u64 size)
{
 sector_t sector;
 struct dos_dentry_t *dos_ep;

 dos_ep = (struct dos_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
        &sector);
 if (!dos_ep)
  return FFS_MEDIAERR;

 init_dos_entry(dos_ep, type, start_clu);
 buf_modify(sb, sector);

 return FFS_SUCCESS;
}
