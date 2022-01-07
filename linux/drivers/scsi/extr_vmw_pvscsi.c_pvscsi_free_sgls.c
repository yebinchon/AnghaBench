
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_ctx {scalar_t__ sgl; } ;
struct pvscsi_adapter {unsigned int req_depth; struct pvscsi_ctx* cmd_map; } ;


 int SGL_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void pvscsi_free_sgls(const struct pvscsi_adapter *adapter)
{
 struct pvscsi_ctx *ctx = adapter->cmd_map;
 unsigned i;

 for (i = 0; i < adapter->req_depth; ++i, ++ctx)
  free_pages((unsigned long)ctx->sgl, get_order(SGL_SIZE));
}
