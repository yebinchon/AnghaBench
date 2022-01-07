
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_intel_ctx {int dummy; } ;


 int kfree (struct sdw_intel_ctx*) ;
 int sdw_intel_cleanup_pdev (struct sdw_intel_ctx*) ;

void sdw_intel_exit(void *arg)
{
 struct sdw_intel_ctx *ctx = arg;

 sdw_intel_cleanup_pdev(ctx);
 kfree(ctx);
}
