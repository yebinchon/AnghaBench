
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct file_dentry_t {int checksum; scalar_t__ num_ext; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;


 int CS_DEFAULT ;
 int CS_DIR_ENTRY ;
 int DENTRY_SIZE ;
 int SET16_A (int ,scalar_t__) ;
 int buf_lock (struct super_block*,int ) ;
 int buf_modify (struct super_block*,int ) ;
 int buf_unlock (struct super_block*,int ) ;
 scalar_t__ calc_checksum_2byte (void*,int ,scalar_t__,int ) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,struct chain_t*,int,int *) ;

void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
    s32 entry)
{
 int i, num_entries;
 sector_t sector;
 u16 chksum;
 struct file_dentry_t *file_ep;
 struct dentry_t *ep;

 file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
          &sector);
 if (!file_ep)
  return;

 buf_lock(sb, sector);

 num_entries = (s32)file_ep->num_ext + 1;
 chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
         CS_DIR_ENTRY);

 for (i = 1; i < num_entries; i++) {
  ep = get_entry_in_dir(sb, p_dir, entry + i, ((void*)0));
  if (!ep) {
   buf_unlock(sb, sector);
   return;
  }

  chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
          CS_DEFAULT);
 }

 SET16_A(file_ep->checksum, chksum);
 buf_modify(sb, sector);
 buf_unlock(sb, sector);
}
