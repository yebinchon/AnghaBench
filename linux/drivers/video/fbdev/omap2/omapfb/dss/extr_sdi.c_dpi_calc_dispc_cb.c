
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lck_div; int pck_div; unsigned long lck; unsigned long pck; } ;
struct sdi_clk_calc_ctx {TYPE_1__ dispc_cinfo; } ;



__attribute__((used)) static bool dpi_calc_dispc_cb(int lckd, int pckd, unsigned long lck,
  unsigned long pck, void *data)
{
 struct sdi_clk_calc_ctx *ctx = data;

 ctx->dispc_cinfo.lck_div = lckd;
 ctx->dispc_cinfo.pck_div = pckd;
 ctx->dispc_cinfo.lck = lck;
 ctx->dispc_cinfo.pck = pck;

 return 1;
}
