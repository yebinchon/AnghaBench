
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct send_ctx {int cur_inode_gen; int cur_ino; } ;
struct fs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int ENOMEM ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int send_remove_xattr (struct send_ctx*,struct fs_path*,char const*,int) ;

__attribute__((used)) static int __process_deleted_xattr(int num, struct btrfs_key *di_key,
       const char *name, int name_len,
       const char *data, int data_len,
       u8 type, void *ctx)
{
 int ret;
 struct send_ctx *sctx = ctx;
 struct fs_path *p;

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;

 ret = get_cur_path(sctx, sctx->cur_ino, sctx->cur_inode_gen, p);
 if (ret < 0)
  goto out;

 ret = send_remove_xattr(sctx, p, name, name_len);

out:
 fs_path_free(p);
 return ret;
}
