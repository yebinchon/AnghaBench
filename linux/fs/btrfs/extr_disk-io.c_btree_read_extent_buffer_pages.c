
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int read_mirror; int len; int start; int bflags; struct btrfs_fs_info* fs_info; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int btree_inode; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; } ;


 TYPE_1__* BTRFS_I (int ) ;
 int EIO ;
 int EUCLEAN ;
 int EXTENT_BUFFER_CORRUPT ;
 int WAIT_COMPLETE ;
 int btrfs_num_copies (struct btrfs_fs_info*,int ,int ) ;
 int btrfs_repair_eb_io_failure (struct extent_buffer*,int) ;
 scalar_t__ btrfs_verify_level_key (struct extent_buffer*,int,struct btrfs_key*,int ) ;
 int clear_bit (int ,int *) ;
 int read_extent_buffer_pages (struct extent_buffer*,int ,int) ;
 scalar_t__ verify_parent_transid (struct extent_io_tree*,struct extent_buffer*,int ,int ) ;

__attribute__((used)) static int btree_read_extent_buffer_pages(struct extent_buffer *eb,
       u64 parent_transid, int level,
       struct btrfs_key *first_key)
{
 struct btrfs_fs_info *fs_info = eb->fs_info;
 struct extent_io_tree *io_tree;
 int failed = 0;
 int ret;
 int num_copies = 0;
 int mirror_num = 0;
 int failed_mirror = 0;

 io_tree = &BTRFS_I(fs_info->btree_inode)->io_tree;
 while (1) {
  clear_bit(EXTENT_BUFFER_CORRUPT, &eb->bflags);
  ret = read_extent_buffer_pages(eb, WAIT_COMPLETE, mirror_num);
  if (!ret) {
   if (verify_parent_transid(io_tree, eb,
         parent_transid, 0))
    ret = -EIO;
   else if (btrfs_verify_level_key(eb, level,
      first_key, parent_transid))
    ret = -EUCLEAN;
   else
    break;
  }

  num_copies = btrfs_num_copies(fs_info,
           eb->start, eb->len);
  if (num_copies == 1)
   break;

  if (!failed_mirror) {
   failed = 1;
   failed_mirror = eb->read_mirror;
  }

  mirror_num++;
  if (mirror_num == failed_mirror)
   mirror_num++;

  if (mirror_num > num_copies)
   break;
 }

 if (failed && !ret && failed_mirror)
  btrfs_repair_eb_io_failure(eb, failed_mirror);

 return ret;
}
