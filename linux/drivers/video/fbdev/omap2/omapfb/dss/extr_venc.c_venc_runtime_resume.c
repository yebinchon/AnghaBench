
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_dac_clk; } ;


 int clk_prepare_enable (scalar_t__) ;
 int dispc_runtime_get () ;
 TYPE_1__ venc ;

__attribute__((used)) static int venc_runtime_resume(struct device *dev)
{
 int r;

 r = dispc_runtime_get();
 if (r < 0)
  return r;

 if (venc.tv_dac_clk)
  clk_prepare_enable(venc.tv_dac_clk);

 return 0;
}
