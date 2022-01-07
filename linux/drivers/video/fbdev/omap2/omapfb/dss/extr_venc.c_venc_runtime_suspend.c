
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_dac_clk; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int dispc_runtime_put () ;
 TYPE_1__ venc ;

__attribute__((used)) static int venc_runtime_suspend(struct device *dev)
{
 if (venc.tv_dac_clk)
  clk_disable_unprepare(venc.tv_dac_clk);

 dispc_runtime_put();

 return 0;
}
