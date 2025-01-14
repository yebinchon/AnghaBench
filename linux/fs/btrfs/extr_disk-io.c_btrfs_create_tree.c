
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int b; } ;
typedef TYPE_2__ uuid_le ;
typedef void* u64 ;
struct extent_buffer {int len; int start; } ;
struct btrfs_trans_handle {int transid; struct btrfs_fs_info* fs_info; } ;
struct TYPE_15__ {scalar_t__ drop_level; int uuid; scalar_t__ byte_limit; scalar_t__ flags; } ;
struct TYPE_13__ {scalar_t__ offset; void* type; void* objectid; } ;
struct btrfs_root {struct extent_buffer* commit_root; TYPE_4__ root_item; int state; struct extent_buffer* node; TYPE_1__ root_key; } ;
struct btrfs_key {scalar_t__ offset; void* type; void* objectid; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;


 void* BTRFS_ROOT_ITEM_KEY ;
 int BTRFS_ROOT_TRACK_DIRTY ;
 int BTRFS_UUID_SIZE ;
 int ENOMEM ;
 struct btrfs_root* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 TYPE_2__ NULL_UUID_LE ;
 int PTR_ERR (struct extent_buffer*) ;
 int __setup_root (struct btrfs_root*,struct btrfs_fs_info*,void*) ;
 struct btrfs_root* btrfs_alloc_root (struct btrfs_fs_info*,int ) ;
 struct extent_buffer* btrfs_alloc_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,int ,void*,int *,int ,int ,int ) ;
 int btrfs_insert_root (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,TYPE_4__*) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 struct extent_buffer* btrfs_root_node (struct btrfs_root*) ;
 int btrfs_set_root_bytenr (TYPE_4__*,int ) ;
 int btrfs_set_root_dirid (TYPE_4__*,int ) ;
 int btrfs_set_root_generation (TYPE_4__*,int ) ;
 int btrfs_set_root_last_snapshot (TYPE_4__*,int ) ;
 int btrfs_set_root_level (TYPE_4__*,int ) ;
 int btrfs_set_root_refs (TYPE_4__*,int) ;
 int btrfs_set_root_used (TYPE_4__*,int ) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 scalar_t__ is_fstree (void*) ;
 int kfree (struct btrfs_root*) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int memcpy (int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int uuid_le_gen (TYPE_2__*) ;

struct btrfs_root *btrfs_create_tree(struct btrfs_trans_handle *trans,
         u64 objectid)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct extent_buffer *leaf;
 struct btrfs_root *tree_root = fs_info->tree_root;
 struct btrfs_root *root;
 struct btrfs_key key;
 unsigned int nofs_flag;
 int ret = 0;
 uuid_le uuid = NULL_UUID_LE;





 nofs_flag = memalloc_nofs_save();
 root = btrfs_alloc_root(fs_info, GFP_KERNEL);
 memalloc_nofs_restore(nofs_flag);
 if (!root)
  return ERR_PTR(-ENOMEM);

 __setup_root(root, fs_info, objectid);
 root->root_key.objectid = objectid;
 root->root_key.type = BTRFS_ROOT_ITEM_KEY;
 root->root_key.offset = 0;

 leaf = btrfs_alloc_tree_block(trans, root, 0, objectid, ((void*)0), 0, 0, 0);
 if (IS_ERR(leaf)) {
  ret = PTR_ERR(leaf);
  leaf = ((void*)0);
  goto fail;
 }

 root->node = leaf;
 btrfs_mark_buffer_dirty(leaf);

 root->commit_root = btrfs_root_node(root);
 set_bit(BTRFS_ROOT_TRACK_DIRTY, &root->state);

 root->root_item.flags = 0;
 root->root_item.byte_limit = 0;
 btrfs_set_root_bytenr(&root->root_item, leaf->start);
 btrfs_set_root_generation(&root->root_item, trans->transid);
 btrfs_set_root_level(&root->root_item, 0);
 btrfs_set_root_refs(&root->root_item, 1);
 btrfs_set_root_used(&root->root_item, leaf->len);
 btrfs_set_root_last_snapshot(&root->root_item, 0);
 btrfs_set_root_dirid(&root->root_item, 0);
 if (is_fstree(objectid))
  uuid_le_gen(&uuid);
 memcpy(root->root_item.uuid, uuid.b, BTRFS_UUID_SIZE);
 root->root_item.drop_level = 0;

 key.objectid = objectid;
 key.type = BTRFS_ROOT_ITEM_KEY;
 key.offset = 0;
 ret = btrfs_insert_root(trans, tree_root, &key, &root->root_item);
 if (ret)
  goto fail;

 btrfs_tree_unlock(leaf);

 return root;

fail:
 if (leaf) {
  btrfs_tree_unlock(leaf);
  free_extent_buffer(root->commit_root);
  free_extent_buffer(leaf);
 }
 kfree(root);

 return ERR_PTR(ret);
}
