
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
struct TYPE_2__ {int* dsi_clk_source; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DSS_CONTROL ;



 int REG_FLD_MOD (int ,int,int,int) ;
 TYPE_1__ dss ;

void dss_select_dsi_clk_source(int dsi_module,
  enum omap_dss_clk_source clk_src)
{
 int b, pos;

 switch (clk_src) {
 case 128:
  b = 0;
  break;
 case 129:
  BUG_ON(dsi_module != 0);
  b = 1;
  break;
 case 130:
  BUG_ON(dsi_module != 1);
  b = 1;
  break;
 default:
  BUG();
  return;
 }

 pos = dsi_module == 0 ? 1 : 10;
 REG_FLD_MOD(DSS_CONTROL, b, pos, pos);

 dss.dsi_clk_source[dsi_module] = clk_src;
}
