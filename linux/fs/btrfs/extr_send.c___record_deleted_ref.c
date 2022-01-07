
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int deleted_refs; int parent_root; } ;
struct fs_path {int dummy; } ;


 int record_ref (int ,int ,struct fs_path*,void*,int *) ;

__attribute__((used)) static int __record_deleted_ref(int num, u64 dir, int index,
    struct fs_path *name,
    void *ctx)
{
 struct send_ctx *sctx = ctx;
 return record_ref(sctx->parent_root, dir, name, ctx,
     &sctx->deleted_refs);
}
