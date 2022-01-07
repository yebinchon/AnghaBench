
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; } ;
struct btrfs_key {int offset; int type; int objectid; } ;
struct btrfs_inode_extref {int dummy; } ;


 int BTRFS_INODE_EXTREF_KEY ;
 struct btrfs_inode_extref* ERR_PTR (int) ;
 int btrfs_extref_hash (int ,char const*,int) ;
 struct btrfs_inode_extref* btrfs_find_name_in_ext_backref (int ,int ,int ,char const*,int) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;

struct btrfs_inode_extref *
btrfs_lookup_inode_extref(struct btrfs_trans_handle *trans,
     struct btrfs_root *root,
     struct btrfs_path *path,
     const char *name, int name_len,
     u64 inode_objectid, u64 ref_objectid, int ins_len,
     int cow)
{
 int ret;
 struct btrfs_key key;

 key.objectid = inode_objectid;
 key.type = BTRFS_INODE_EXTREF_KEY;
 key.offset = btrfs_extref_hash(ref_objectid, name, name_len);

 ret = btrfs_search_slot(trans, root, &key, path, ins_len, cow);
 if (ret < 0)
  return ERR_PTR(ret);
 if (ret > 0)
  return ((void*)0);
 return btrfs_find_name_in_ext_backref(path->nodes[0], path->slots[0],
           ref_objectid, name, name_len);

}
