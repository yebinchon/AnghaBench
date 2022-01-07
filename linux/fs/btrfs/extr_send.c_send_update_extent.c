
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct send_ctx {int cur_inode_gen; int cur_ino; } ;
struct fs_path {int dummy; } ;


 int BTRFS_SEND_A_FILE_OFFSET ;
 int BTRFS_SEND_A_PATH ;
 int BTRFS_SEND_A_SIZE ;
 int BTRFS_SEND_C_UPDATE_EXTENT ;
 int ENOMEM ;
 int TLV_PUT_PATH (struct send_ctx*,int ,struct fs_path*) ;
 int TLV_PUT_U64 (struct send_ctx*,int ,int ) ;
 int begin_cmd (struct send_ctx*,int ) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int send_cmd (struct send_ctx*) ;

__attribute__((used)) static int send_update_extent(struct send_ctx *sctx,
         u64 offset, u32 len)
{
 int ret = 0;
 struct fs_path *p;

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;

 ret = begin_cmd(sctx, BTRFS_SEND_C_UPDATE_EXTENT);
 if (ret < 0)
  goto out;

 ret = get_cur_path(sctx, sctx->cur_ino, sctx->cur_inode_gen, p);
 if (ret < 0)
  goto out;

 TLV_PUT_PATH(sctx, BTRFS_SEND_A_PATH, p);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_FILE_OFFSET, offset);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_SIZE, len);

 ret = send_cmd(sctx);

tlv_put_failure:
out:
 fs_path_free(p);
 return ret;
}
