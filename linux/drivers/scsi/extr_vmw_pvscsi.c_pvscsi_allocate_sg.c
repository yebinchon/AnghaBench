
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_sg_list {int dummy; } ;
struct pvscsi_ctx {int * sgl; scalar_t__ sglPA; } ;
struct pvscsi_adapter {int req_depth; struct pvscsi_ctx* cmd_map; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (unsigned long,int ) ;
 int PAGE_SIZE ;
 int SGL_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;

__attribute__((used)) static int pvscsi_allocate_sg(struct pvscsi_adapter *adapter)
{
 struct pvscsi_ctx *ctx;
 int i;

 ctx = adapter->cmd_map;
 BUILD_BUG_ON(sizeof(struct pvscsi_sg_list) > SGL_SIZE);

 for (i = 0; i < adapter->req_depth; ++i, ++ctx) {
  ctx->sgl = (void *)__get_free_pages(GFP_KERNEL,
          get_order(SGL_SIZE));
  ctx->sglPA = 0;
  BUG_ON(!IS_ALIGNED(((unsigned long)ctx->sgl), PAGE_SIZE));
  if (!ctx->sgl) {
   for (; i >= 0; --i, --ctx) {
    free_pages((unsigned long)ctx->sgl,
        get_order(SGL_SIZE));
    ctx->sgl = ((void*)0);
   }
   return -ENOMEM;
  }
 }

 return 0;
}
