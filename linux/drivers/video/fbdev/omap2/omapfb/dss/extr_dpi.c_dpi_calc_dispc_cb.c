
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lck_div; int pck_div; unsigned long lck; unsigned long pck; } ;
struct dpi_clk_calc_ctx {int pck_min; TYPE_1__ dispc_cinfo; } ;



__attribute__((used)) static bool dpi_calc_dispc_cb(int lckd, int pckd, unsigned long lck,
  unsigned long pck, void *data)
{
 struct dpi_clk_calc_ctx *ctx = data;






 if (ctx->pck_min >= 100000000) {
  if (lckd > 1 && lckd % 2 != 0)
   return 0;

  if (pckd > 1 && pckd % 2 != 0)
   return 0;
 }

 ctx->dispc_cinfo.lck_div = lckd;
 ctx->dispc_cinfo.pck_div = pckd;
 ctx->dispc_cinfo.lck = lck;
 ctx->dispc_cinfo.pck = pck;

 return 1;
}
