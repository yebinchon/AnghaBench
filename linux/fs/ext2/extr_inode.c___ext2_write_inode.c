
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uid_t ;
struct super_block {int s_id; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct inode {int i_size; int i_blocks; int i_generation; int i_rdev; int i_mode; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_nlink; scalar_t__ i_ino; struct super_block* i_sb; } ;
struct ext2_inode_info {int i_state; int i_dtime; int i_flags; int i_faddr; int i_file_acl; int i_dir_acl; void** i_data; int i_frag_size; int i_frag_no; } ;
struct ext2_inode {void** i_block; void* i_generation; void* i_size_high; void* i_dir_acl; void* i_file_acl; int i_fsize; int i_frag; void* i_faddr; void* i_flags; void* i_dtime; void* i_blocks; void* i_mtime; void* i_ctime; void* i_atime; void* i_size; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ino_t ;
typedef int gid_t ;
struct TYPE_10__ {TYPE_4__* s_es; int s_lock; int s_inode_size; } ;
struct TYPE_9__ {void* s_rev_level; } ;


 int EIO ;
 int EXT2_FEATURE_RO_COMPAT_LARGE_FILE ;
 int EXT2_GOOD_OLD_REV ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 int EXT2_N_BLOCKS ;
 TYPE_5__* EXT2_SB (struct super_block*) ;
 int EXT2_SET_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT2_STATE_NEW ;
 scalar_t__ IS_ERR (struct ext2_inode*) ;
 int NO_UID32 ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int S_ISREG (int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_req (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 struct ext2_inode* ext2_get_inode (struct super_block*,scalar_t__,struct buffer_head**) ;
 int ext2_sync_super (struct super_block*,TYPE_4__*,int) ;
 int ext2_update_dynamic_rev (struct super_block*) ;
 int fs_high2lowgid (int ) ;
 int fs_high2lowuid (int ) ;
 int high_16_bits (int ) ;
 int i_gid_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int low_16_bits (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memset (struct ext2_inode*,int ,int ) ;
 int new_encode_dev (int ) ;
 int old_encode_dev (int ) ;
 scalar_t__ old_valid_dev (int ) ;
 int printk (char*,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int test_opt (struct super_block*,int ) ;

__attribute__((used)) static int __ext2_write_inode(struct inode *inode, int do_sync)
{
 struct ext2_inode_info *ei = EXT2_I(inode);
 struct super_block *sb = inode->i_sb;
 ino_t ino = inode->i_ino;
 uid_t uid = i_uid_read(inode);
 gid_t gid = i_gid_read(inode);
 struct buffer_head * bh;
 struct ext2_inode * raw_inode = ext2_get_inode(sb, ino, &bh);
 int n;
 int err = 0;

 if (IS_ERR(raw_inode))
   return -EIO;



 if (ei->i_state & EXT2_STATE_NEW)
  memset(raw_inode, 0, EXT2_SB(sb)->s_inode_size);

 raw_inode->i_mode = cpu_to_le16(inode->i_mode);
 if (!(test_opt(sb, NO_UID32))) {
  raw_inode->i_uid_low = cpu_to_le16(low_16_bits(uid));
  raw_inode->i_gid_low = cpu_to_le16(low_16_bits(gid));




  if (!ei->i_dtime) {
   raw_inode->i_uid_high = cpu_to_le16(high_16_bits(uid));
   raw_inode->i_gid_high = cpu_to_le16(high_16_bits(gid));
  } else {
   raw_inode->i_uid_high = 0;
   raw_inode->i_gid_high = 0;
  }
 } else {
  raw_inode->i_uid_low = cpu_to_le16(fs_high2lowuid(uid));
  raw_inode->i_gid_low = cpu_to_le16(fs_high2lowgid(gid));
  raw_inode->i_uid_high = 0;
  raw_inode->i_gid_high = 0;
 }
 raw_inode->i_links_count = cpu_to_le16(inode->i_nlink);
 raw_inode->i_size = cpu_to_le32(inode->i_size);
 raw_inode->i_atime = cpu_to_le32(inode->i_atime.tv_sec);
 raw_inode->i_ctime = cpu_to_le32(inode->i_ctime.tv_sec);
 raw_inode->i_mtime = cpu_to_le32(inode->i_mtime.tv_sec);

 raw_inode->i_blocks = cpu_to_le32(inode->i_blocks);
 raw_inode->i_dtime = cpu_to_le32(ei->i_dtime);
 raw_inode->i_flags = cpu_to_le32(ei->i_flags);
 raw_inode->i_faddr = cpu_to_le32(ei->i_faddr);
 raw_inode->i_frag = ei->i_frag_no;
 raw_inode->i_fsize = ei->i_frag_size;
 raw_inode->i_file_acl = cpu_to_le32(ei->i_file_acl);
 if (!S_ISREG(inode->i_mode))
  raw_inode->i_dir_acl = cpu_to_le32(ei->i_dir_acl);
 else {
  raw_inode->i_size_high = cpu_to_le32(inode->i_size >> 32);
  if (inode->i_size > 0x7fffffffULL) {
   if (!EXT2_HAS_RO_COMPAT_FEATURE(sb,
     EXT2_FEATURE_RO_COMPAT_LARGE_FILE) ||
       EXT2_SB(sb)->s_es->s_rev_level ==
     cpu_to_le32(EXT2_GOOD_OLD_REV)) {



    spin_lock(&EXT2_SB(sb)->s_lock);
    ext2_update_dynamic_rev(sb);
    EXT2_SET_RO_COMPAT_FEATURE(sb,
     EXT2_FEATURE_RO_COMPAT_LARGE_FILE);
    spin_unlock(&EXT2_SB(sb)->s_lock);
    ext2_sync_super(sb, EXT2_SB(sb)->s_es, 1);
   }
  }
 }

 raw_inode->i_generation = cpu_to_le32(inode->i_generation);
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {
  if (old_valid_dev(inode->i_rdev)) {
   raw_inode->i_block[0] =
    cpu_to_le32(old_encode_dev(inode->i_rdev));
   raw_inode->i_block[1] = 0;
  } else {
   raw_inode->i_block[0] = 0;
   raw_inode->i_block[1] =
    cpu_to_le32(new_encode_dev(inode->i_rdev));
   raw_inode->i_block[2] = 0;
  }
 } else for (n = 0; n < EXT2_N_BLOCKS; n++)
  raw_inode->i_block[n] = ei->i_data[n];
 mark_buffer_dirty(bh);
 if (do_sync) {
  sync_dirty_buffer(bh);
  if (buffer_req(bh) && !buffer_uptodate(bh)) {
   printk ("IO error syncing ext2 inode [%s:%08lx]\n",
    sb->s_id, (unsigned long) ino);
   err = -EIO;
  }
 }
 ei->i_state &= ~EXT2_STATE_NEW;
 brelse (bh);
 return err;
}
