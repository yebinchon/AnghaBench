
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct send_ctx {TYPE_1__* send_root; } ;
struct fs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int BTRFS_SEND_A_MODE ;
 int BTRFS_SEND_A_PATH ;
 int BTRFS_SEND_C_CHMOD ;
 int ENOMEM ;
 int TLV_PUT_PATH (struct send_ctx*,int ,struct fs_path*) ;
 int TLV_PUT_U64 (struct send_ctx*,int ,int) ;
 int begin_cmd (struct send_ctx*,int ) ;
 int btrfs_debug (struct btrfs_fs_info*,char*,int,int) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int,int,struct fs_path*) ;
 int send_cmd (struct send_ctx*) ;

__attribute__((used)) static int send_chmod(struct send_ctx *sctx, u64 ino, u64 gen, u64 mode)
{
 struct btrfs_fs_info *fs_info = sctx->send_root->fs_info;
 int ret = 0;
 struct fs_path *p;

 btrfs_debug(fs_info, "send_chmod %llu mode=%llu", ino, mode);

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;

 ret = begin_cmd(sctx, BTRFS_SEND_C_CHMOD);
 if (ret < 0)
  goto out;

 ret = get_cur_path(sctx, ino, gen, p);
 if (ret < 0)
  goto out;
 TLV_PUT_PATH(sctx, BTRFS_SEND_A_PATH, p);
 TLV_PUT_U64(sctx, BTRFS_SEND_A_MODE, mode & 07777);

 ret = send_cmd(sctx);

tlv_put_failure:
out:
 fs_path_free(p);
 return ret;
}
