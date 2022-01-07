
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* mX; unsigned long* clkout; } ;
struct dsi_clk_calc_ctx {int req_pck_max; int req_pck_min; TYPE_2__* config; TYPE_1__ dsi_cinfo; } ;
struct TYPE_4__ {scalar_t__ trans_mode; } ;


 size_t HSDIV_DISPC ;
 scalar_t__ OMAP_DSS_DSI_BURST_MODE ;
 int dispc_div_calc (unsigned long,int ,unsigned long,int ,struct dsi_clk_calc_ctx*) ;
 int dsi_vm_calc_dispc_cb ;

__attribute__((used)) static bool dsi_vm_calc_hsdiv_cb(int m_dispc, unsigned long dispc,
  void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;
 unsigned long pck_max;

 ctx->dsi_cinfo.mX[HSDIV_DISPC] = m_dispc;
 ctx->dsi_cinfo.clkout[HSDIV_DISPC] = dispc;






 if (ctx->config->trans_mode == OMAP_DSS_DSI_BURST_MODE)
  pck_max = ctx->req_pck_max + 10000000;
 else
  pck_max = ctx->req_pck_max;

 return dispc_div_calc(dispc, ctx->req_pck_min, pck_max,
   dsi_vm_calc_dispc_cb, ctx);
}
