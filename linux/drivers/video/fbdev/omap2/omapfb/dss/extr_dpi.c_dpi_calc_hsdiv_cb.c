
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mX; unsigned long* clkout; } ;
struct dpi_clk_calc_ctx {int pck_min; int pck_max; TYPE_1__ dsi_cinfo; } ;


 size_t HSDIV_DISPC ;
 int dispc_div_calc (unsigned long,int,int ,int ,struct dpi_clk_calc_ctx*) ;
 int dpi_calc_dispc_cb ;

__attribute__((used)) static bool dpi_calc_hsdiv_cb(int m_dispc, unsigned long dispc,
  void *data)
{
 struct dpi_clk_calc_ctx *ctx = data;






 if (m_dispc > 1 && m_dispc % 2 != 0 && ctx->pck_min >= 100000000)
  return 0;

 ctx->dsi_cinfo.mX[HSDIV_DISPC] = m_dispc;
 ctx->dsi_cinfo.clkout[HSDIV_DISPC] = dispc;

 return dispc_div_calc(dispc, ctx->pck_min, ctx->pck_max,
   dpi_calc_dispc_cb, ctx);
}
