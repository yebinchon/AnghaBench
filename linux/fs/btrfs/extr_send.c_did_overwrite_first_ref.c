
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int parent_root; } ;
struct fs_path {int start; } ;


 int ENOMEM ;
 int did_overwrite_ref (struct send_ctx*,int ,int ,int ,int ,int ,int ) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int fs_path_len (struct fs_path*) ;
 int get_first_ref (int ,int ,int *,int *,struct fs_path*) ;

__attribute__((used)) static int did_overwrite_first_ref(struct send_ctx *sctx, u64 ino, u64 gen)
{
 int ret = 0;
 struct fs_path *name = ((void*)0);
 u64 dir;
 u64 dir_gen;

 if (!sctx->parent_root)
  goto out;

 name = fs_path_alloc();
 if (!name)
  return -ENOMEM;

 ret = get_first_ref(sctx->parent_root, ino, &dir, &dir_gen, name);
 if (ret < 0)
  goto out;

 ret = did_overwrite_ref(sctx, dir, dir_gen, ino, gen,
   name->start, fs_path_len(name));

out:
 fs_path_free(name);
 return ret;
}
