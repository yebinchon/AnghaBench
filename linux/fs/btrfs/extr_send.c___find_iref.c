
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fs_path {int start; } ;
struct find_ref_ctx {scalar_t__ dir; scalar_t__ dir_gen; int found_idx; int root; struct fs_path* name; } ;


 scalar_t__ fs_path_len (struct fs_path*) ;
 int get_inode_info (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int __find_iref(int num, u64 dir, int index,
         struct fs_path *name,
         void *ctx_)
{
 struct find_ref_ctx *ctx = ctx_;
 u64 dir_gen;
 int ret;

 if (dir == ctx->dir && fs_path_len(name) == fs_path_len(ctx->name) &&
     strncmp(name->start, ctx->name->start, fs_path_len(name)) == 0) {




  ret = get_inode_info(ctx->root, dir, ((void*)0), &dir_gen, ((void*)0),
         ((void*)0), ((void*)0), ((void*)0));
  if (ret)
   return ret;
  if (dir_gen != ctx->dir_gen)
   return 0;
  ctx->found_idx = num;
  return 1;
 }
 return 0;
}
