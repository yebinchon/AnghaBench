
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uni_name_t {int * name; } ;
struct super_block {int dummy; } ;
struct ext_dentry_t {int dummy; } ;
struct dos_name_t {int name; int name_case; } ;
struct dos_dentry_t {scalar_t__ name; int lcase; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ s32 ;


 int DOS_NAME_LENGTH ;
 scalar_t__ FFS_MEDIAERR ;
 scalar_t__ FFS_SUCCESS ;
 int buf_modify (struct super_block*,int ) ;
 int calc_checksum_1byte (void*,int ,int ) ;
 scalar_t__ get_entry_in_dir (struct super_block*,struct chain_t*,scalar_t__,int *) ;
 int init_ext_entry (struct ext_dentry_t*,int,int ,int *) ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static s32 fat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
         s32 entry, s32 num_entries,
         struct uni_name_t *p_uniname,
         struct dos_name_t *p_dosname)
{
 int i;
 sector_t sector;
 u8 chksum;
 u16 *uniname = p_uniname->name;
 struct dos_dentry_t *dos_ep;
 struct ext_dentry_t *ext_ep;

 dos_ep = (struct dos_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
        &sector);
 if (!dos_ep)
  return FFS_MEDIAERR;

 dos_ep->lcase = p_dosname->name_case;
 memcpy(dos_ep->name, p_dosname->name, DOS_NAME_LENGTH);
 buf_modify(sb, sector);

 if ((--num_entries) > 0) {
  chksum = calc_checksum_1byte((void *)dos_ep->name,
          DOS_NAME_LENGTH, 0);

  for (i = 1; i < num_entries; i++) {
   ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb,
          p_dir,
          entry - i,
          &sector);
   if (!ext_ep)
    return FFS_MEDIAERR;

   init_ext_entry(ext_ep, i, chksum, uniname);
   buf_modify(sb, sector);
   uniname += 13;
  }

  ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir,
         entry - i,
         &sector);
  if (!ext_ep)
   return FFS_MEDIAERR;

  init_ext_entry(ext_ep, i + 0x40, chksum, uniname);
  buf_modify(sb, sector);
 }

 return FFS_SUCCESS;
}
