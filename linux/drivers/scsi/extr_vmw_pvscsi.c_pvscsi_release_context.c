
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_ctx {int list; int * abort_cmp; int * cmd; } ;
struct pvscsi_adapter {int cmd_pool; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void pvscsi_release_context(struct pvscsi_adapter *adapter,
       struct pvscsi_ctx *ctx)
{
 ctx->cmd = ((void*)0);
 ctx->abort_cmp = ((void*)0);
 list_add(&ctx->list, &adapter->cmd_pool);
}
