
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct walk_control {scalar_t__ stage; int pin; struct btrfs_trans_handle* trans; int process_func; struct btrfs_trans_handle* replay_dest; } ;
struct btrfs_trans_handle {struct btrfs_trans_handle* log_root; int node; int commit_root; int highest_objectid; struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {struct btrfs_root* log_root; int node; int commit_root; int highest_objectid; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {scalar_t__* slots; int * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; void* type; } ;
struct btrfs_fs_info {int flags; int tree_root; } ;


 int BTRFS_FS_LOG_RECOVERING ;
 void* BTRFS_ROOT_ITEM_KEY ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 scalar_t__ LOG_WALK_PIN_ONLY ;
 scalar_t__ LOG_WALK_REPLAY_ALL ;
 scalar_t__ LOG_WALK_REPLAY_INODES ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_find_highest_objectid (struct btrfs_trans_handle*,int *) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_handle_fs_error (struct btrfs_fs_info*,int,char*) ;
 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,scalar_t__) ;
 struct btrfs_trans_handle* btrfs_read_fs_root (struct btrfs_trans_handle*,struct btrfs_key*) ;
 struct btrfs_trans_handle* btrfs_read_fs_root_no_name (struct btrfs_fs_info*,struct btrfs_key*) ;
 int btrfs_record_root_in_trans (struct btrfs_trans_handle*,struct btrfs_trans_handle*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_trans_handle*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 struct btrfs_trans_handle* btrfs_start_transaction (int ,int ) ;
 int clear_bit (int ,int *) ;
 int fixup_inode_link_counts (struct btrfs_trans_handle*,struct btrfs_trans_handle*,struct btrfs_path*) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_trans_handle*) ;
 int process_one_buffer ;
 int replay_one_buffer ;
 int set_bit (int ,int *) ;
 int walk_log_tree (struct btrfs_trans_handle*,struct btrfs_trans_handle*,struct walk_control*) ;

int btrfs_recover_log_trees(struct btrfs_root *log_root_tree)
{
 int ret;
 struct btrfs_path *path;
 struct btrfs_trans_handle *trans;
 struct btrfs_key key;
 struct btrfs_key found_key;
 struct btrfs_key tmp_key;
 struct btrfs_root *log;
 struct btrfs_fs_info *fs_info = log_root_tree->fs_info;
 struct walk_control wc = {
  .process_func = process_one_buffer,
  .stage = LOG_WALK_PIN_ONLY,
 };

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 set_bit(BTRFS_FS_LOG_RECOVERING, &fs_info->flags);

 trans = btrfs_start_transaction(fs_info->tree_root, 0);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto error;
 }

 wc.trans = trans;
 wc.pin = 1;

 ret = walk_log_tree(trans, log_root_tree, &wc);
 if (ret) {
  btrfs_handle_fs_error(fs_info, ret,
   "Failed to pin buffers while recovering log root tree.");
  goto error;
 }

again:
 key.objectid = BTRFS_TREE_LOG_OBJECTID;
 key.offset = (u64)-1;
 key.type = BTRFS_ROOT_ITEM_KEY;

 while (1) {
  ret = btrfs_search_slot(((void*)0), log_root_tree, &key, path, 0, 0);

  if (ret < 0) {
   btrfs_handle_fs_error(fs_info, ret,
        "Couldn't find tree log root.");
   goto error;
  }
  if (ret > 0) {
   if (path->slots[0] == 0)
    break;
   path->slots[0]--;
  }
  btrfs_item_key_to_cpu(path->nodes[0], &found_key,
          path->slots[0]);
  btrfs_release_path(path);
  if (found_key.objectid != BTRFS_TREE_LOG_OBJECTID)
   break;

  log = btrfs_read_fs_root(log_root_tree, &found_key);
  if (IS_ERR(log)) {
   ret = PTR_ERR(log);
   btrfs_handle_fs_error(fs_info, ret,
        "Couldn't read tree log root.");
   goto error;
  }

  tmp_key.objectid = found_key.offset;
  tmp_key.type = BTRFS_ROOT_ITEM_KEY;
  tmp_key.offset = (u64)-1;

  wc.replay_dest = btrfs_read_fs_root_no_name(fs_info, &tmp_key);
  if (IS_ERR(wc.replay_dest)) {
   ret = PTR_ERR(wc.replay_dest);
   free_extent_buffer(log->node);
   free_extent_buffer(log->commit_root);
   kfree(log);
   btrfs_handle_fs_error(fs_info, ret,
    "Couldn't read target root for tree log recovery.");
   goto error;
  }

  wc.replay_dest->log_root = log;
  btrfs_record_root_in_trans(trans, wc.replay_dest);
  ret = walk_log_tree(trans, log, &wc);

  if (!ret && wc.stage == LOG_WALK_REPLAY_ALL) {
   ret = fixup_inode_link_counts(trans, wc.replay_dest,
            path);
  }

  if (!ret && wc.stage == LOG_WALK_REPLAY_ALL) {
   struct btrfs_root *root = wc.replay_dest;

   btrfs_release_path(path);
   ret = btrfs_find_highest_objectid(root,
        &root->highest_objectid);
  }

  key.offset = found_key.offset - 1;
  wc.replay_dest->log_root = ((void*)0);
  free_extent_buffer(log->node);
  free_extent_buffer(log->commit_root);
  kfree(log);

  if (ret)
   goto error;

  if (found_key.offset == 0)
   break;
 }
 btrfs_release_path(path);


 if (wc.pin) {
  wc.pin = 0;
  wc.process_func = replay_one_buffer;
  wc.stage = LOG_WALK_REPLAY_INODES;
  goto again;
 }

 if (wc.stage < LOG_WALK_REPLAY_ALL) {
  wc.stage++;
  goto again;
 }

 btrfs_free_path(path);


 ret = btrfs_commit_transaction(trans);
 if (ret)
  return ret;

 free_extent_buffer(log_root_tree->node);
 log_root_tree->log_root = ((void*)0);
 clear_bit(BTRFS_FS_LOG_RECOVERING, &fs_info->flags);
 kfree(log_root_tree);

 return 0;
error:
 if (wc.trans)
  btrfs_end_transaction(wc.trans);
 btrfs_free_path(path);
 return ret;
}
