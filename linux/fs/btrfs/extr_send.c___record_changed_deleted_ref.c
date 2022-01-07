
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int cmp_key; int left_path; int send_root; int parent_root; } ;
struct fs_path {int dummy; } ;


 int ENOENT ;
 int __record_deleted_ref (int,int ,int,struct fs_path*,struct send_ctx*) ;
 int find_iref (int ,int ,int ,int ,int ,struct fs_path*) ;
 int get_inode_info (int ,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int __record_changed_deleted_ref(int num, u64 dir, int index,
     struct fs_path *name,
     void *ctx)
{
 u64 dir_gen;
 int ret;
 struct send_ctx *sctx = ctx;

 ret = get_inode_info(sctx->parent_root, dir, ((void*)0), &dir_gen, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 if (ret)
  return ret;

 ret = find_iref(sctx->send_root, sctx->left_path, sctx->cmp_key,
   dir, dir_gen, name);
 if (ret == -ENOENT)
  ret = __record_deleted_ref(num, dir, index, name, sctx);
 else if (ret > 0)
  ret = 0;

 return ret;
}
