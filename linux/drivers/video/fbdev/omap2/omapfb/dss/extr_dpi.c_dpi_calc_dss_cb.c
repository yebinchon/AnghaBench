
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpi_clk_calc_ctx {unsigned long fck; int pck_max; int pck_min; } ;


 int dispc_div_calc (unsigned long,int ,int ,int ,struct dpi_clk_calc_ctx*) ;
 int dpi_calc_dispc_cb ;

__attribute__((used)) static bool dpi_calc_dss_cb(unsigned long fck, void *data)
{
 struct dpi_clk_calc_ctx *ctx = data;

 ctx->fck = fck;

 return dispc_div_calc(fck, ctx->pck_min, ctx->pck_max,
   dpi_calc_dispc_cb, ctx);
}
