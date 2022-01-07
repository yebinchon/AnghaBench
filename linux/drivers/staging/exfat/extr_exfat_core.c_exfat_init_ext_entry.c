
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct uni_name_t {int name_hash; int name_len; int * name; } ;
struct super_block {int dummy; } ;
struct strm_dentry_t {int name_hash; int name_len; } ;
struct name_dentry_t {int dummy; } ;
struct file_dentry_t {scalar_t__ num_ext; } ;
struct dos_name_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;


 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 int SET16_A (int ,int ) ;
 int buf_modify (struct super_block*,int ) ;
 scalar_t__ get_entry_in_dir (struct super_block*,struct chain_t*,int,int *) ;
 int init_name_entry (struct name_dentry_t*,int *) ;
 int update_dir_checksum (struct super_block*,struct chain_t*,int) ;

__attribute__((used)) static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
    s32 entry, s32 num_entries,
    struct uni_name_t *p_uniname,
    struct dos_name_t *p_dosname)
{
 int i;
 sector_t sector;
 u16 *uniname = p_uniname->name;
 struct file_dentry_t *file_ep;
 struct strm_dentry_t *strm_ep;
 struct name_dentry_t *name_ep;

 file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
          &sector);
 if (!file_ep)
  return FFS_MEDIAERR;

 file_ep->num_ext = (u8)(num_entries - 1);
 buf_modify(sb, sector);

 strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
          &sector);
 if (!strm_ep)
  return FFS_MEDIAERR;

 strm_ep->name_len = p_uniname->name_len;
 SET16_A(strm_ep->name_hash, p_uniname->name_hash);
 buf_modify(sb, sector);

 for (i = 2; i < num_entries; i++) {
  name_ep = (struct name_dentry_t *)get_entry_in_dir(sb, p_dir,
           entry + i,
           &sector);
  if (!name_ep)
   return FFS_MEDIAERR;

  init_name_entry(name_ep, uniname);
  buf_modify(sb, sector);
  uniname += 15;
 }

 update_dir_checksum(sb, p_dir, entry);

 return FFS_SUCCESS;
}
