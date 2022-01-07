
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int dummy; } ;
struct list_head {int dummy; } ;
struct fs_path {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int ENOMEM ;
 int __record_ref (struct list_head*,int ,int ,struct fs_path*) ;
 int fs_path_add_path (struct fs_path*,struct fs_path*) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int get_inode_info (struct btrfs_root*,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int record_ref(struct btrfs_root *root, u64 dir, struct fs_path *name,
        void *ctx, struct list_head *refs)
{
 int ret = 0;
 struct send_ctx *sctx = ctx;
 struct fs_path *p;
 u64 gen;

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;

 ret = get_inode_info(root, dir, ((void*)0), &gen, ((void*)0), ((void*)0),
   ((void*)0), ((void*)0));
 if (ret < 0)
  goto out;

 ret = get_cur_path(sctx, dir, gen, p);
 if (ret < 0)
  goto out;
 ret = fs_path_add_path(p, name);
 if (ret < 0)
  goto out;

 ret = __record_ref(refs, dir, gen, p);

out:
 if (ret)
  fs_path_free(p);
 return ret;
}
