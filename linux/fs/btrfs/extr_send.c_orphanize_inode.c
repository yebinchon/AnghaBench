
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int dummy; } ;
struct fs_path {int dummy; } ;


 int ENOMEM ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int gen_unique_name (struct send_ctx*,int ,int ,struct fs_path*) ;
 int send_rename (struct send_ctx*,struct fs_path*,struct fs_path*) ;

__attribute__((used)) static int orphanize_inode(struct send_ctx *sctx, u64 ino, u64 gen,
     struct fs_path *path)
{
 int ret;
 struct fs_path *orphan;

 orphan = fs_path_alloc();
 if (!orphan)
  return -ENOMEM;

 ret = gen_unique_name(sctx, ino, gen, orphan);
 if (ret < 0)
  goto out;

 ret = send_rename(sctx, path, orphan);

out:
 fs_path_free(orphan);
 return ret;
}
