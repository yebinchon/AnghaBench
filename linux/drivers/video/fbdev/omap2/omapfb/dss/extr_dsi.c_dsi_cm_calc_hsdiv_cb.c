
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mX; unsigned long* clkout; } ;
struct dsi_clk_calc_ctx {int req_pck_max; int req_pck_min; TYPE_1__ dsi_cinfo; } ;


 size_t HSDIV_DISPC ;
 int dispc_div_calc (unsigned long,int ,int ,int ,struct dsi_clk_calc_ctx*) ;
 int dsi_cm_calc_dispc_cb ;

__attribute__((used)) static bool dsi_cm_calc_hsdiv_cb(int m_dispc, unsigned long dispc,
  void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;

 ctx->dsi_cinfo.mX[HSDIV_DISPC] = m_dispc;
 ctx->dsi_cinfo.clkout[HSDIV_DISPC] = dispc;

 return dispc_div_calc(dispc, ctx->req_pck_min, ctx->req_pck_max,
   dsi_cm_calc_dispc_cb, ctx);
}
