
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_rdev; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int i_nlink; int i_mode; int i_size; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_inode_item {int ctime; int mtime; int atime; } ;
struct TYPE_8__ {int flags; int generation; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 int btrfs_init_map_token (struct btrfs_map_token*,struct extent_buffer*) ;
 int btrfs_set_token_inode_block_group (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_flags (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_generation (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_gid (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_mode (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_nbytes (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_nlink (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_rdev (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_sequence (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_size (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_transid (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_inode_uid (struct extent_buffer*,struct btrfs_inode_item*,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_timespec_nsec (struct extent_buffer*,int *,int ,struct btrfs_map_token*) ;
 int btrfs_set_token_timespec_sec (struct extent_buffer*,int *,int ,struct btrfs_map_token*) ;
 int i_gid_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int inode_get_bytes (struct inode*) ;
 int inode_peek_iversion (struct inode*) ;

__attribute__((used)) static void fill_inode_item(struct btrfs_trans_handle *trans,
       struct extent_buffer *leaf,
       struct btrfs_inode_item *item,
       struct inode *inode, int log_inode_only,
       u64 logged_isize)
{
 struct btrfs_map_token token;

 btrfs_init_map_token(&token, leaf);

 if (log_inode_only) {





  btrfs_set_token_inode_generation(leaf, item, 0, &token);
  btrfs_set_token_inode_size(leaf, item, logged_isize, &token);
 } else {
  btrfs_set_token_inode_generation(leaf, item,
       BTRFS_I(inode)->generation,
       &token);
  btrfs_set_token_inode_size(leaf, item, inode->i_size, &token);
 }

 btrfs_set_token_inode_uid(leaf, item, i_uid_read(inode), &token);
 btrfs_set_token_inode_gid(leaf, item, i_gid_read(inode), &token);
 btrfs_set_token_inode_mode(leaf, item, inode->i_mode, &token);
 btrfs_set_token_inode_nlink(leaf, item, inode->i_nlink, &token);

 btrfs_set_token_timespec_sec(leaf, &item->atime,
         inode->i_atime.tv_sec, &token);
 btrfs_set_token_timespec_nsec(leaf, &item->atime,
          inode->i_atime.tv_nsec, &token);

 btrfs_set_token_timespec_sec(leaf, &item->mtime,
         inode->i_mtime.tv_sec, &token);
 btrfs_set_token_timespec_nsec(leaf, &item->mtime,
          inode->i_mtime.tv_nsec, &token);

 btrfs_set_token_timespec_sec(leaf, &item->ctime,
         inode->i_ctime.tv_sec, &token);
 btrfs_set_token_timespec_nsec(leaf, &item->ctime,
          inode->i_ctime.tv_nsec, &token);

 btrfs_set_token_inode_nbytes(leaf, item, inode_get_bytes(inode),
         &token);

 btrfs_set_token_inode_sequence(leaf, item,
           inode_peek_iversion(inode), &token);
 btrfs_set_token_inode_transid(leaf, item, trans->transid, &token);
 btrfs_set_token_inode_rdev(leaf, item, inode->i_rdev, &token);
 btrfs_set_token_inode_flags(leaf, item, BTRFS_I(inode)->flags, &token);
 btrfs_set_token_inode_block_group(leaf, item, 0, &token);
}
