
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_inode {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_XATTR_ITEM_KEY ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 scalar_t__ btrfs_ino (struct btrfs_inode*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int cond_resched () ;
 int copy_items (struct btrfs_trans_handle*,struct btrfs_inode*,struct btrfs_path*,struct btrfs_path*,scalar_t__*,int,int,int,int ) ;

__attribute__((used)) static int btrfs_log_all_xattrs(struct btrfs_trans_handle *trans,
    struct btrfs_root *root,
    struct btrfs_inode *inode,
    struct btrfs_path *path,
    struct btrfs_path *dst_path)
{
 int ret;
 struct btrfs_key key;
 const u64 ino = btrfs_ino(inode);
 int ins_nr = 0;
 int start_slot = 0;

 key.objectid = ino;
 key.type = BTRFS_XATTR_ITEM_KEY;
 key.offset = 0;

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  return ret;

 while (1) {
  int slot = path->slots[0];
  struct extent_buffer *leaf = path->nodes[0];
  int nritems = btrfs_header_nritems(leaf);

  if (slot >= nritems) {
   if (ins_nr > 0) {
    u64 last_extent = 0;

    ret = copy_items(trans, inode, dst_path, path,
       &last_extent, start_slot,
       ins_nr, 1, 0);

    ASSERT(ret <= 0);
    if (ret < 0)
     return ret;
    ins_nr = 0;
   }
   ret = btrfs_next_leaf(root, path);
   if (ret < 0)
    return ret;
   else if (ret > 0)
    break;
   continue;
  }

  btrfs_item_key_to_cpu(leaf, &key, slot);
  if (key.objectid != ino || key.type != BTRFS_XATTR_ITEM_KEY)
   break;

  if (ins_nr == 0)
   start_slot = slot;
  ins_nr++;
  path->slots[0]++;
  cond_resched();
 }
 if (ins_nr > 0) {
  u64 last_extent = 0;

  ret = copy_items(trans, inode, dst_path, path,
     &last_extent, start_slot,
     ins_nr, 1, 0);

  ASSERT(ret <= 0);
  if (ret < 0)
   return ret;
 }

 return 0;
}
