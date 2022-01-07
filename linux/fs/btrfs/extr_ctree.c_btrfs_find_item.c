
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef void* u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__ type; scalar_t__ objectid; scalar_t__* slots; struct extent_buffer** nodes; void* offset; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__* slots; struct extent_buffer** nodes; void* offset; } ;


 int ASSERT (struct btrfs_path*) ;
 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_path*,scalar_t__) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_path*,struct btrfs_path*,int ,int ) ;

int btrfs_find_item(struct btrfs_root *fs_root, struct btrfs_path *path,
  u64 iobjectid, u64 ioff, u8 key_type,
  struct btrfs_key *found_key)
{
 int ret;
 struct btrfs_key key;
 struct extent_buffer *eb;

 ASSERT(path);
 ASSERT(found_key);

 key.type = key_type;
 key.objectid = iobjectid;
 key.offset = ioff;

 ret = btrfs_search_slot(((void*)0), fs_root, &key, path, 0, 0);
 if (ret < 0)
  return ret;

 eb = path->nodes[0];
 if (ret && path->slots[0] >= btrfs_header_nritems(eb)) {
  ret = btrfs_next_leaf(fs_root, path);
  if (ret)
   return ret;
  eb = path->nodes[0];
 }

 btrfs_item_key_to_cpu(eb, found_key, path->slots[0]);
 if (found_key->type != key.type ||
   found_key->objectid != key.objectid)
  return 1;

 return 0;
}
