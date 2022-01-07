
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_root {int defrag_trans_start; struct btrfs_key defrag_progress; TYPE_2__ defrag_max; int node; int state; TYPE_1__* fs_info; } ;
struct btrfs_path {int keep_locks; int lowest_level; scalar_t__* locks; struct extent_buffer** nodes; void** slots; } ;
typedef int key ;
struct TYPE_3__ {struct btrfs_root* extent_root; } ;


 int BTRFS_OLDEST_GENERATION ;
 int BTRFS_ROOT_REF_COWS ;
 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int WARN_ON (int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_find_next_key (struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,int ) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_level (int ) ;
 void* btrfs_header_nritems (struct extent_buffer*) ;
 struct extent_buffer* btrfs_lock_root_node (struct btrfs_root*) ;
 int btrfs_node_key_to_cpu (struct extent_buffer*,TYPE_2__*,void*) ;
 int btrfs_realloc_node (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,int ,int *,struct btrfs_key*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_forward (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int) ;
 int btrfs_set_lock_blocking_write (struct extent_buffer*) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int memcpy (struct btrfs_key*,struct btrfs_key*,int) ;
 int memset (struct btrfs_key*,int ,int) ;
 int test_bit (int ,int *) ;

int btrfs_defrag_leaves(struct btrfs_trans_handle *trans,
   struct btrfs_root *root)
{
 struct btrfs_path *path = ((void*)0);
 struct btrfs_key key;
 int ret = 0;
 int wret;
 int level;
 int next_key_ret = 0;
 u64 last_ret = 0;

 if (root->fs_info->extent_root == root) {




  goto out;
 }

 if (!test_bit(BTRFS_ROOT_REF_COWS, &root->state))
  goto out;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 level = btrfs_header_level(root->node);

 if (level == 0)
  goto out;

 if (root->defrag_progress.objectid == 0) {
  struct extent_buffer *root_node;
  u32 nritems;

  root_node = btrfs_lock_root_node(root);
  btrfs_set_lock_blocking_write(root_node);
  nritems = btrfs_header_nritems(root_node);
  root->defrag_max.objectid = 0;

  btrfs_node_key_to_cpu(root_node, &root->defrag_max,
          nritems - 1);
  btrfs_tree_unlock(root_node);
  free_extent_buffer(root_node);
  memset(&key, 0, sizeof(key));
 } else {
  memcpy(&key, &root->defrag_progress, sizeof(key));
 }

 path->keep_locks = 1;

 ret = btrfs_search_forward(root, &key, path, BTRFS_OLDEST_GENERATION);
 if (ret < 0)
  goto out;
 if (ret > 0) {
  ret = 0;
  goto out;
 }
 btrfs_release_path(path);





 path->lowest_level = 1;
 wret = btrfs_search_slot(trans, root, &key, path, 0, 1);

 if (wret < 0) {
  ret = wret;
  goto out;
 }
 if (!path->nodes[1]) {
  ret = 0;
  goto out;
 }





 BUG_ON(path->locks[1] == 0);
 ret = btrfs_realloc_node(trans, root,
     path->nodes[1], 0,
     &last_ret,
     &root->defrag_progress);
 if (ret) {
  WARN_ON(ret == -EAGAIN);
  goto out;
 }
 path->slots[1] = btrfs_header_nritems(path->nodes[1]);
 next_key_ret = btrfs_find_next_key(root, path, &key, 1,
        BTRFS_OLDEST_GENERATION);
 if (next_key_ret == 0) {
  memcpy(&root->defrag_progress, &key, sizeof(key));
  ret = -EAGAIN;
 }
out:
 btrfs_free_path(path);
 if (ret == -EAGAIN) {
  if (root->defrag_max.objectid > root->defrag_progress.objectid)
   goto done;
  if (root->defrag_max.type > root->defrag_progress.type)
   goto done;
  if (root->defrag_max.offset > root->defrag_progress.offset)
   goto done;
  ret = 0;
 }
done:
 if (ret != -EAGAIN) {
  memset(&root->defrag_progress, 0,
         sizeof(root->defrag_progress));
  root->defrag_trans_start = trans->transid;
 }
 return ret;
}
