
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct send_ctx {TYPE_3__* send_root; int cur_inode_gen; int cur_ino; } ;
struct fs_path {int dummy; } ;
struct clone_root {int offset; TYPE_3__* root; int ino; } ;
struct TYPE_6__ {int ctransid; int uuid; int received_uuid; } ;
struct TYPE_5__ {int objectid; } ;
struct TYPE_7__ {TYPE_2__ root_item; TYPE_1__ root_key; int fs_info; } ;


 int BTRFS_SEND_A_CLONE_CTRANSID ;
 int BTRFS_SEND_A_CLONE_LEN ;
 int BTRFS_SEND_A_CLONE_OFFSET ;
 int BTRFS_SEND_A_CLONE_PATH ;
 int BTRFS_SEND_A_CLONE_UUID ;
 int BTRFS_SEND_A_FILE_OFFSET ;
 int BTRFS_SEND_A_PATH ;
 int BTRFS_SEND_C_CLONE ;
 int ENOMEM ;
 int TLV_PUT_PATH (struct send_ctx*,int ,struct fs_path*) ;
 int TLV_PUT_U64 (struct send_ctx*,int ,int ) ;
 int TLV_PUT_UUID (struct send_ctx*,int ,int ) ;
 int begin_cmd (struct send_ctx*,int ) ;
 int btrfs_debug (int ,char*,int ,int ,int ,int ,int ) ;
 int btrfs_is_empty_uuid (int ) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int get_inode_info (TYPE_3__*,int ,int *,int *,int *,int *,int *,int *) ;
 int get_inode_path (TYPE_3__*,int ,struct fs_path*) ;
 int le64_to_cpu (int ) ;
 int send_cmd (struct send_ctx*) ;

__attribute__((used)) static int send_clone(struct send_ctx *sctx,
        u64 offset, u32 len,
        struct clone_root *clone_root)
{
 int ret = 0;
 struct fs_path *p;
 u64 gen;

 btrfs_debug(sctx->send_root->fs_info,
      "send_clone offset=%llu, len=%d, clone_root=%llu, clone_inode=%llu, clone_offset=%llu",
      offset, len, clone_root->root->root_key.objectid,
      clone_root->ino, clone_root->offset);

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;

 ret = begin_cmd(sctx, BTRFS_SEND_C_CLONE);
 if (ret < 0)
  goto out;

 ret = get_cur_path(sctx, sctx->cur_ino, sctx->cur_inode_gen, p);
 if (ret < 0)
  goto out;

 TLV_PUT_U64(sctx, BTRFS_SEND_A_FILE_OFFSET, offset);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_CLONE_LEN, len);
 TLV_PUT_PATH(sctx, BTRFS_SEND_A_PATH, p);

 if (clone_root->root == sctx->send_root) {
  ret = get_inode_info(sctx->send_root, clone_root->ino, ((void*)0),
    &gen, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  if (ret < 0)
   goto out;
  ret = get_cur_path(sctx, clone_root->ino, gen, p);
 } else {
  ret = get_inode_path(clone_root->root, clone_root->ino, p);
 }
 if (ret < 0)
  goto out;
 if (!btrfs_is_empty_uuid(clone_root->root->root_item.received_uuid))
  TLV_PUT_UUID(sctx, BTRFS_SEND_A_CLONE_UUID,
        clone_root->root->root_item.received_uuid);
 else
  TLV_PUT_UUID(sctx, BTRFS_SEND_A_CLONE_UUID,
        clone_root->root->root_item.uuid);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_CLONE_CTRANSID,
      le64_to_cpu(clone_root->root->root_item.ctransid));
 TLV_PUT_PATH(sctx, BTRFS_SEND_A_CLONE_PATH, p);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_CLONE_OFFSET,
   clone_root->offset);

 ret = send_cmd(sctx);

tlv_put_failure:
out:
 fs_path_free(p);
 return ret;
}
