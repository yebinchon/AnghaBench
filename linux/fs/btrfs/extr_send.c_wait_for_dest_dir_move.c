
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct waiting_dir_move {int orphanized; } ;
struct send_ctx {int deleted_refs; int new_refs; int cur_inode_gen; int cur_ino; TYPE_1__* send_root; TYPE_1__* parent_root; int waiting_dir_moves; } ;
struct recorded_ref {int name_len; int name; int dir; } ;
struct btrfs_path {int * nodes; } ;
struct btrfs_key {scalar_t__ type; int objectid; int offset; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 scalar_t__ BTRFS_DIR_ITEM_KEY ;
 scalar_t__ BTRFS_INODE_ITEM_KEY ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int add_pending_dir_move (struct send_ctx*,int ,int ,int ,int *,int *,int const) ;
 struct btrfs_path* alloc_path_for_send () ;
 int btrfs_dir_item_key_to_cpu (int ,struct btrfs_dir_item*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 struct btrfs_dir_item* btrfs_match_dir_item_name (struct btrfs_fs_info*,struct btrfs_path*,int ,int ) ;
 int btrfs_name_hash (int ,int ) ;
 int btrfs_search_slot (int *,TYPE_1__*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int get_inode_info (TYPE_1__*,int ,int *,scalar_t__*,int *,int *,int *,int *) ;
 struct waiting_dir_move* get_waiting_dir_move (struct send_ctx*,int ) ;

__attribute__((used)) static int wait_for_dest_dir_move(struct send_ctx *sctx,
      struct recorded_ref *parent_ref,
      const bool is_orphan)
{
 struct btrfs_fs_info *fs_info = sctx->parent_root->fs_info;
 struct btrfs_path *path;
 struct btrfs_key key;
 struct btrfs_key di_key;
 struct btrfs_dir_item *di;
 u64 left_gen;
 u64 right_gen;
 int ret = 0;
 struct waiting_dir_move *wdm;

 if (RB_EMPTY_ROOT(&sctx->waiting_dir_moves))
  return 0;

 path = alloc_path_for_send();
 if (!path)
  return -ENOMEM;

 key.objectid = parent_ref->dir;
 key.type = BTRFS_DIR_ITEM_KEY;
 key.offset = btrfs_name_hash(parent_ref->name, parent_ref->name_len);

 ret = btrfs_search_slot(((void*)0), sctx->parent_root, &key, path, 0, 0);
 if (ret < 0) {
  goto out;
 } else if (ret > 0) {
  ret = 0;
  goto out;
 }

 di = btrfs_match_dir_item_name(fs_info, path, parent_ref->name,
           parent_ref->name_len);
 if (!di) {
  ret = 0;
  goto out;
 }
 btrfs_dir_item_key_to_cpu(path->nodes[0], di, &di_key);
 if (di_key.type != BTRFS_INODE_ITEM_KEY) {
  ret = 0;
  goto out;
 }

 ret = get_inode_info(sctx->parent_root, di_key.objectid, ((void*)0),
        &left_gen, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 if (ret < 0)
  goto out;
 ret = get_inode_info(sctx->send_root, di_key.objectid, ((void*)0),
        &right_gen, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 if (ret < 0) {
  if (ret == -ENOENT)
   ret = 0;
  goto out;
 }


 if (right_gen != left_gen) {
  ret = 0;
  goto out;
 }

 wdm = get_waiting_dir_move(sctx, di_key.objectid);
 if (wdm && !wdm->orphanized) {
  ret = add_pending_dir_move(sctx,
        sctx->cur_ino,
        sctx->cur_inode_gen,
        di_key.objectid,
        &sctx->new_refs,
        &sctx->deleted_refs,
        is_orphan);
  if (!ret)
   ret = 1;
 }
out:
 btrfs_free_path(path);
 return ret;
}
