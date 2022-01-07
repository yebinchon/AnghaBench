
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
struct TYPE_2__ {int dispc_clk_source; } ;


 int BUG () ;
 int DSS_CONTROL ;
 int FEAT_REG_DISPC_CLK_SWITCH ;



 int REG_FLD_MOD (int ,int,int ,int ) ;
 TYPE_1__ dss ;
 int dss_feat_get_reg_field (int ,int *,int *) ;

__attribute__((used)) static void dss_select_dispc_clk_source(enum omap_dss_clk_source clk_src)
{
 int b;
 u8 start, end;

 switch (clk_src) {
 case 128:
  b = 0;
  break;
 case 129:
  b = 1;
  break;
 case 130:
  b = 2;
  break;
 default:
  BUG();
  return;
 }

 dss_feat_get_reg_field(FEAT_REG_DISPC_CLK_SWITCH, &start, &end);

 REG_FLD_MOD(DSS_CONTROL, b, start, end);

 dss.dispc_clk_source = clk_src;
}
