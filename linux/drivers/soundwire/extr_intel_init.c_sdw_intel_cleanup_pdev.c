
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_link_data {scalar_t__ pdev; } ;
struct sdw_intel_ctx {int count; struct sdw_link_data* links; } ;


 int kfree (struct sdw_link_data*) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static int sdw_intel_cleanup_pdev(struct sdw_intel_ctx *ctx)
{
 struct sdw_link_data *link = ctx->links;
 int i;

 if (!link)
  return 0;

 for (i = 0; i < ctx->count; i++) {
  if (link->pdev)
   platform_device_unregister(link->pdev);
  link++;
 }

 kfree(ctx->links);
 ctx->links = ((void*)0);

 return 0;
}
