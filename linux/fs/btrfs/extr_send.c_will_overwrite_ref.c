
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct send_ctx {scalar_t__ send_progress; scalar_t__ parent_root; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 int ENOENT ;
 int get_inode_info (scalar_t__,scalar_t__,int *,scalar_t__*,scalar_t__*,int *,int *,int *) ;
 int is_inode_existent (struct send_ctx*,scalar_t__,scalar_t__) ;
 scalar_t__ is_waiting_for_move (struct send_ctx*,scalar_t__) ;
 int lookup_dir_item_inode (scalar_t__,scalar_t__,char const*,int,scalar_t__*,int *) ;

__attribute__((used)) static int will_overwrite_ref(struct send_ctx *sctx, u64 dir, u64 dir_gen,
         const char *name, int name_len,
         u64 *who_ino, u64 *who_gen, u64 *who_mode)
{
 int ret = 0;
 u64 gen;
 u64 other_inode = 0;
 u8 other_type = 0;

 if (!sctx->parent_root)
  goto out;

 ret = is_inode_existent(sctx, dir, dir_gen);
 if (ret <= 0)
  goto out;






 if (sctx->parent_root && dir != BTRFS_FIRST_FREE_OBJECTID) {
  ret = get_inode_info(sctx->parent_root, dir, ((void*)0), &gen, ((void*)0),
         ((void*)0), ((void*)0), ((void*)0));
  if (ret < 0 && ret != -ENOENT)
   goto out;
  if (ret) {
   ret = 0;
   goto out;
  }
  if (gen != dir_gen)
   goto out;
 }

 ret = lookup_dir_item_inode(sctx->parent_root, dir, name, name_len,
   &other_inode, &other_type);
 if (ret < 0 && ret != -ENOENT)
  goto out;
 if (ret) {
  ret = 0;
  goto out;
 }






 if (other_inode > sctx->send_progress ||
     is_waiting_for_move(sctx, other_inode)) {
  ret = get_inode_info(sctx->parent_root, other_inode, ((void*)0),
    who_gen, who_mode, ((void*)0), ((void*)0), ((void*)0));
  if (ret < 0)
   goto out;

  ret = 1;
  *who_ino = other_inode;
 } else {
  ret = 0;
 }

out:
 return ret;
}
