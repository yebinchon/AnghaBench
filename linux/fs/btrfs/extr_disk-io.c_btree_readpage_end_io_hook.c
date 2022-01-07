
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct page {scalar_t__ private; TYPE_1__* mapping; } ;
struct extent_buffer {int read_mirror; scalar_t__ start; int io_pages; int bflags; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_io_bio {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* sb; int super_copy; } ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_5__ {int s_id; } ;
struct TYPE_4__ {int host; } ;


 int BTRFS_CSUM_SIZE ;
 TYPE_3__* BTRFS_I (int ) ;
 int BTRFS_MAX_LEVEL ;
 int EIO ;
 int EUCLEAN ;
 int EXTENT_BUFFER_CORRUPT ;
 int EXTENT_BUFFER_READAHEAD ;
 int EXTENT_BUFFER_READ_ERR ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int btree_readahead_hook (struct extent_buffer*,int) ;
 scalar_t__ btrfs_check_leaf_full (struct extent_buffer*) ;
 scalar_t__ btrfs_check_node (struct extent_buffer*) ;
 int btrfs_err (struct btrfs_fs_info*,char*,scalar_t__,...) ;
 int btrfs_err_rl (struct btrfs_fs_info*,char*,scalar_t__,...) ;
 scalar_t__ btrfs_header_bytenr (struct extent_buffer*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_header_owner (struct extent_buffer*) ;
 int btrfs_set_buffer_lockdep_class (int ,struct extent_buffer*,int) ;
 int btrfs_super_csum_size (int ) ;
 int btrfs_warn_rl (struct btrfs_fs_info*,char*,int ,scalar_t__,int ,int ,int) ;
 scalar_t__ check_tree_block_fsid (struct extent_buffer*) ;
 int clear_extent_buffer_uptodate (struct extent_buffer*) ;
 int csum_tree_block (struct extent_buffer*,int *) ;
 int extent_buffer_get (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 scalar_t__ memcmp_extent_buffer (struct extent_buffer*,int *,int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int read_extent_buffer (struct extent_buffer*,int *,int ,int ) ;
 int set_bit (int ,int *) ;
 int set_extent_buffer_uptodate (struct extent_buffer*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int btree_readpage_end_io_hook(struct btrfs_io_bio *io_bio,
          u64 phy_offset, struct page *page,
          u64 start, u64 end, int mirror)
{
 u64 found_start;
 int found_level;
 struct extent_buffer *eb;
 struct btrfs_root *root = BTRFS_I(page->mapping->host)->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 u16 csum_size = btrfs_super_csum_size(fs_info->super_copy);
 int ret = 0;
 u8 result[BTRFS_CSUM_SIZE];
 int reads_done;

 if (!page->private)
  goto out;

 eb = (struct extent_buffer *)page->private;




 extent_buffer_get(eb);

 reads_done = atomic_dec_and_test(&eb->io_pages);
 if (!reads_done)
  goto err;

 eb->read_mirror = mirror;
 if (test_bit(EXTENT_BUFFER_READ_ERR, &eb->bflags)) {
  ret = -EIO;
  goto err;
 }

 found_start = btrfs_header_bytenr(eb);
 if (found_start != eb->start) {
  btrfs_err_rl(fs_info, "bad tree block start, want %llu have %llu",
        eb->start, found_start);
  ret = -EIO;
  goto err;
 }
 if (check_tree_block_fsid(eb)) {
  btrfs_err_rl(fs_info, "bad fsid on block %llu",
        eb->start);
  ret = -EIO;
  goto err;
 }
 found_level = btrfs_header_level(eb);
 if (found_level >= BTRFS_MAX_LEVEL) {
  btrfs_err(fs_info, "bad tree block level %d on %llu",
     (int)btrfs_header_level(eb), eb->start);
  ret = -EIO;
  goto err;
 }

 btrfs_set_buffer_lockdep_class(btrfs_header_owner(eb),
           eb, found_level);

 ret = csum_tree_block(eb, result);
 if (ret)
  goto err;

 if (memcmp_extent_buffer(eb, result, 0, csum_size)) {
  u32 val;
  u32 found = 0;

  memcpy(&found, result, csum_size);

  read_extent_buffer(eb, &val, 0, csum_size);
  btrfs_warn_rl(fs_info,
  "%s checksum verify failed on %llu wanted %x found %x level %d",
         fs_info->sb->s_id, eb->start,
         val, found, btrfs_header_level(eb));
  ret = -EUCLEAN;
  goto err;
 }






 if (found_level == 0 && btrfs_check_leaf_full(eb)) {
  set_bit(EXTENT_BUFFER_CORRUPT, &eb->bflags);
  ret = -EIO;
 }

 if (found_level > 0 && btrfs_check_node(eb))
  ret = -EIO;

 if (!ret)
  set_extent_buffer_uptodate(eb);
 else
  btrfs_err(fs_info,
     "block=%llu read time tree block corruption detected",
     eb->start);
err:
 if (reads_done &&
     test_and_clear_bit(EXTENT_BUFFER_READAHEAD, &eb->bflags))
  btree_readahead_hook(eb, ret);

 if (ret) {





  atomic_inc(&eb->io_pages);
  clear_extent_buffer_uptodate(eb);
 }
 free_extent_buffer(eb);
out:
 return ret;
}
