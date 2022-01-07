
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct strm_dentry_t {int dummy; } ;
struct file_dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ s32 ;


 scalar_t__ FFS_MEDIAERR ;
 scalar_t__ FFS_SUCCESS ;
 int TYPE_FILE ;
 int buf_modify (struct super_block*,int ) ;
 scalar_t__ get_entry_in_dir (struct super_block*,struct chain_t*,scalar_t__,int *) ;
 int init_file_entry (struct file_dentry_t*,int ) ;
 int init_strm_entry (struct strm_dentry_t*,int,int ,int ) ;

s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
    s32 entry, u32 type, u32 start_clu, u64 size)
{
 sector_t sector;
 u8 flags;
 struct file_dentry_t *file_ep;
 struct strm_dentry_t *strm_ep;

 flags = (type == TYPE_FILE) ? 0x01 : 0x03;


 file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
          &sector);
 if (!file_ep)
  return FFS_MEDIAERR;

 strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
          &sector);
 if (!strm_ep)
  return FFS_MEDIAERR;

 init_file_entry(file_ep, type);
 buf_modify(sb, sector);

 init_strm_entry(strm_ep, flags, start_clu, size);
 buf_modify(sb, sector);

 return FFS_SUCCESS;
}
