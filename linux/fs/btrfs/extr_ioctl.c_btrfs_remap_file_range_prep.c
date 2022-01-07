
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {scalar_t__ i_sb; scalar_t__ i_size; int i_mapping; } ;
struct TYPE_7__ {scalar_t__ mnt; } ;
struct file {TYPE_3__ f_path; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
typedef scalar_t__ loff_t ;
struct TYPE_8__ {int flags; struct btrfs_root* root; } ;
struct TYPE_6__ {TYPE_1__* sb; } ;
struct TYPE_5__ {scalar_t__ s_blocksize; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 scalar_t__ ALIGN_DOWN (scalar_t__,scalar_t__) ;
 TYPE_4__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATASUM ;
 int EINVAL ;
 int EROFS ;
 int EXDEV ;
 unsigned int REMAP_FILE_DEDUP ;
 scalar_t__ btrfs_root_readonly (struct btrfs_root*) ;
 int btrfs_wait_ordered_range (struct inode*,scalar_t__,scalar_t__) ;
 struct inode* file_inode (struct file*) ;
 int filemap_flush (int ) ;
 int generic_remap_file_range_prep (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__*,unsigned int) ;
 int inode_dio_wait (struct inode*) ;

__attribute__((used)) static int btrfs_remap_file_range_prep(struct file *file_in, loff_t pos_in,
           struct file *file_out, loff_t pos_out,
           loff_t *len, unsigned int remap_flags)
{
 struct inode *inode_in = file_inode(file_in);
 struct inode *inode_out = file_inode(file_out);
 u64 bs = BTRFS_I(inode_out)->root->fs_info->sb->s_blocksize;
 bool same_inode = inode_out == inode_in;
 u64 wb_len;
 int ret;

 if (!(remap_flags & REMAP_FILE_DEDUP)) {
  struct btrfs_root *root_out = BTRFS_I(inode_out)->root;

  if (btrfs_root_readonly(root_out))
   return -EROFS;

  if (file_in->f_path.mnt != file_out->f_path.mnt ||
      inode_in->i_sb != inode_out->i_sb)
   return -EXDEV;
 }


 if ((BTRFS_I(inode_in)->flags & BTRFS_INODE_NODATASUM) !=
     (BTRFS_I(inode_out)->flags & BTRFS_INODE_NODATASUM)) {
  return -EINVAL;
 }
 if (*len == 0 && !(remap_flags & REMAP_FILE_DEDUP))
  wb_len = ALIGN(inode_in->i_size, bs) - ALIGN_DOWN(pos_in, bs);
 else
  wb_len = ALIGN(*len, bs);






 inode_dio_wait(inode_in);
 if (!same_inode)
  inode_dio_wait(inode_out);
 ret = filemap_flush(inode_in->i_mapping);
 if (ret < 0)
  return ret;

 ret = btrfs_wait_ordered_range(inode_in, ALIGN_DOWN(pos_in, bs),
           wb_len);
 if (ret < 0)
  return ret;
 ret = btrfs_wait_ordered_range(inode_out, ALIGN_DOWN(pos_out, bs),
           wb_len);
 if (ret < 0)
  return ret;

 return generic_remap_file_range_prep(file_in, pos_in, file_out, pos_out,
         len, remap_flags);
}
