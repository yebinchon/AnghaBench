
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct send_ctx {scalar_t__ cur_ino; int deleted_refs; int new_refs; int cur_inode_gen; int parent_root; int send_root; } ;
struct recorded_ref {scalar_t__ dir; scalar_t__ dir_gen; } ;
struct fs_path {int start; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 int ENOENT ;
 int ENOMEM ;
 int add_pending_dir_move (struct send_ctx*,scalar_t__,int ,scalar_t__,int *,int *,int const) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int fs_path_len (struct fs_path*) ;
 int fs_path_reset (struct fs_path*) ;
 int get_first_ref (int ,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ;
 int get_inode_info (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 int is_ancestor (int ,scalar_t__,int ,scalar_t__,struct fs_path*) ;
 scalar_t__ is_waiting_for_move (struct send_ctx*,scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int wait_for_parent_move(struct send_ctx *sctx,
    struct recorded_ref *parent_ref,
    const bool is_orphan)
{
 int ret = 0;
 u64 ino = parent_ref->dir;
 u64 ino_gen = parent_ref->dir_gen;
 u64 parent_ino_before, parent_ino_after;
 struct fs_path *path_before = ((void*)0);
 struct fs_path *path_after = ((void*)0);
 int len1, len2;

 path_after = fs_path_alloc();
 path_before = fs_path_alloc();
 if (!path_after || !path_before) {
  ret = -ENOMEM;
  goto out;
 }
 while (ino > BTRFS_FIRST_FREE_OBJECTID) {
  u64 parent_ino_after_gen;

  if (is_waiting_for_move(sctx, ino)) {
   ret = is_ancestor(sctx->parent_root,
       sctx->cur_ino, sctx->cur_inode_gen,
       ino, path_before);
   if (ret)
    break;
  }

  fs_path_reset(path_before);
  fs_path_reset(path_after);

  ret = get_first_ref(sctx->send_root, ino, &parent_ino_after,
        &parent_ino_after_gen, path_after);
  if (ret < 0)
   goto out;
  ret = get_first_ref(sctx->parent_root, ino, &parent_ino_before,
        ((void*)0), path_before);
  if (ret < 0 && ret != -ENOENT) {
   goto out;
  } else if (ret == -ENOENT) {
   ret = 0;
   break;
  }

  len1 = fs_path_len(path_before);
  len2 = fs_path_len(path_after);
  if (ino > sctx->cur_ino &&
      (parent_ino_before != parent_ino_after || len1 != len2 ||
       memcmp(path_before->start, path_after->start, len1))) {
   u64 parent_ino_gen;

   ret = get_inode_info(sctx->parent_root, ino, ((void*)0),
          &parent_ino_gen, ((void*)0), ((void*)0), ((void*)0),
          ((void*)0));
   if (ret < 0)
    goto out;
   if (ino_gen == parent_ino_gen) {
    ret = 1;
    break;
   }
  }
  ino = parent_ino_after;
  ino_gen = parent_ino_after_gen;
 }

out:
 fs_path_free(path_before);
 fs_path_free(path_after);

 if (ret == 1) {
  ret = add_pending_dir_move(sctx,
        sctx->cur_ino,
        sctx->cur_inode_gen,
        ino,
        &sctx->new_refs,
        &sctx->deleted_refs,
        is_orphan);
  if (!ret)
   ret = 1;
 }

 return ret;
}
