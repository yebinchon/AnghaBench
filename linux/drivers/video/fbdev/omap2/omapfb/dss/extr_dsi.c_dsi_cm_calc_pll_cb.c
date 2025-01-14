
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n; int m; unsigned long fint; unsigned long clkdco; } ;
struct dsi_clk_calc_ctx {int req_pck_min; int pll; TYPE_1__ dsi_cinfo; } ;


 int FEAT_PARAM_DSS_FCK ;
 int dsi_cm_calc_hsdiv_cb ;
 int dss_feat_get_param_max (int ) ;
 int dss_pll_hsdiv_calc (int ,unsigned long,int ,int ,int ,struct dsi_clk_calc_ctx*) ;

__attribute__((used)) static bool dsi_cm_calc_pll_cb(int n, int m, unsigned long fint,
  unsigned long clkdco, void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;

 ctx->dsi_cinfo.n = n;
 ctx->dsi_cinfo.m = m;
 ctx->dsi_cinfo.fint = fint;
 ctx->dsi_cinfo.clkdco = clkdco;

 return dss_pll_hsdiv_calc(ctx->pll, clkdco, ctx->req_pck_min,
   dss_feat_get_param_max(FEAT_PARAM_DSS_FCK),
   dsi_cm_calc_hsdiv_cb, ctx);
}
