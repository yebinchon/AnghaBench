
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct send_ctx {scalar_t__ send_progress; scalar_t__ cur_ino; scalar_t__ cur_inode_next_write_offset; scalar_t__ cur_inode_size; scalar_t__ cur_inode_last_extent; int cur_inode_gen; int cur_inode_mode; int parent_root; scalar_t__ cur_inode_new; int send_root; TYPE_1__* cmp_key; scalar_t__ cur_inode_deleted; scalar_t__ ignore_cur_inode; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;


 int S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int apply_children_dir_moves (struct send_ctx*) ;
 int get_inode_info (int ,scalar_t__,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int get_last_extent (struct send_ctx*,scalar_t__) ;
 int is_waiting_for_move (struct send_ctx*,scalar_t__) ;
 scalar_t__ need_send_hole (struct send_ctx*) ;
 int process_recorded_refs_if_needed (struct send_ctx*,int,int*,int*) ;
 int send_chmod (struct send_ctx*,scalar_t__,int ,scalar_t__) ;
 int send_chown (struct send_ctx*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int send_hole (struct send_ctx*,scalar_t__) ;
 int send_truncate (struct send_ctx*,scalar_t__,int ,scalar_t__) ;
 int send_utimes (struct send_ctx*,scalar_t__,int ) ;

__attribute__((used)) static int finish_inode_if_needed(struct send_ctx *sctx, int at_end)
{
 int ret = 0;
 u64 left_mode;
 u64 left_uid;
 u64 left_gid;
 u64 right_mode;
 u64 right_uid;
 u64 right_gid;
 int need_chmod = 0;
 int need_chown = 0;
 int need_truncate = 1;
 int pending_move = 0;
 int refs_processed = 0;

 if (sctx->ignore_cur_inode)
  return 0;

 ret = process_recorded_refs_if_needed(sctx, at_end, &pending_move,
           &refs_processed);
 if (ret < 0)
  goto out;
 if (refs_processed && !pending_move)
  sctx->send_progress = sctx->cur_ino + 1;

 if (sctx->cur_ino == 0 || sctx->cur_inode_deleted)
  goto out;
 if (!at_end && sctx->cmp_key->objectid == sctx->cur_ino)
  goto out;

 ret = get_inode_info(sctx->send_root, sctx->cur_ino, ((void*)0), ((void*)0),
   &left_mode, &left_uid, &left_gid, ((void*)0));
 if (ret < 0)
  goto out;

 if (!sctx->parent_root || sctx->cur_inode_new) {
  need_chown = 1;
  if (!S_ISLNK(sctx->cur_inode_mode))
   need_chmod = 1;
  if (sctx->cur_inode_next_write_offset == sctx->cur_inode_size)
   need_truncate = 0;
 } else {
  u64 old_size;

  ret = get_inode_info(sctx->parent_root, sctx->cur_ino,
    &old_size, ((void*)0), &right_mode, &right_uid,
    &right_gid, ((void*)0));
  if (ret < 0)
   goto out;

  if (left_uid != right_uid || left_gid != right_gid)
   need_chown = 1;
  if (!S_ISLNK(sctx->cur_inode_mode) && left_mode != right_mode)
   need_chmod = 1;
  if ((old_size == sctx->cur_inode_size) ||
      (sctx->cur_inode_size > old_size &&
       sctx->cur_inode_next_write_offset == sctx->cur_inode_size))
   need_truncate = 0;
 }

 if (S_ISREG(sctx->cur_inode_mode)) {
  if (need_send_hole(sctx)) {
   if (sctx->cur_inode_last_extent == (u64)-1 ||
       sctx->cur_inode_last_extent <
       sctx->cur_inode_size) {
    ret = get_last_extent(sctx, (u64)-1);
    if (ret)
     goto out;
   }
   if (sctx->cur_inode_last_extent <
       sctx->cur_inode_size) {
    ret = send_hole(sctx, sctx->cur_inode_size);
    if (ret)
     goto out;
   }
  }
  if (need_truncate) {
   ret = send_truncate(sctx, sctx->cur_ino,
         sctx->cur_inode_gen,
         sctx->cur_inode_size);
   if (ret < 0)
    goto out;
  }
 }

 if (need_chown) {
  ret = send_chown(sctx, sctx->cur_ino, sctx->cur_inode_gen,
    left_uid, left_gid);
  if (ret < 0)
   goto out;
 }
 if (need_chmod) {
  ret = send_chmod(sctx, sctx->cur_ino, sctx->cur_inode_gen,
    left_mode);
  if (ret < 0)
   goto out;
 }





 if (!is_waiting_for_move(sctx, sctx->cur_ino)) {
  ret = apply_children_dir_moves(sctx);
  if (ret)
   goto out;







  sctx->send_progress = sctx->cur_ino + 1;
  ret = send_utimes(sctx, sctx->cur_ino, sctx->cur_inode_gen);
  if (ret < 0)
   goto out;
 }

out:
 return ret;
}
