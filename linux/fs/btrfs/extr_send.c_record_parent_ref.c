
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct parent_paths_ctx {int refs; TYPE_1__* sctx; } ;
struct fs_path {int dummy; } ;
struct TYPE_2__ {int parent_root; } ;


 int record_ref (int ,int ,struct fs_path*,TYPE_1__*,int ) ;

__attribute__((used)) static int record_parent_ref(int num, u64 dir, int index, struct fs_path *name,
        void *ctx)
{
 struct parent_paths_ctx *ppctx = ctx;

 return record_ref(ppctx->sctx->parent_root, dir, name, ppctx->sctx,
     ppctx->refs);
}
