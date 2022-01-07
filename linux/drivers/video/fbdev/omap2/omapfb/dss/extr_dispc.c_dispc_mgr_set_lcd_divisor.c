
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int core_clk_rate; } ;


 int BUG_ON (int) ;
 int DISPC_DIVISORo (int) ;
 int FEAT_CORE_CLK_DIV ;
 int FLD_VAL (int,int,int) ;
 int OMAP_DSS_CHANNEL_LCD ;
 TYPE_1__ dispc ;
 int dispc_fclk_rate () ;
 int dispc_write_reg (int ,int) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static void dispc_mgr_set_lcd_divisor(enum omap_channel channel, u16 lck_div,
  u16 pck_div)
{
 BUG_ON(lck_div < 1);
 BUG_ON(pck_div < 1);

 dispc_write_reg(DISPC_DIVISORo(channel),
   FLD_VAL(lck_div, 23, 16) | FLD_VAL(pck_div, 7, 0));

 if (!dss_has_feature(FEAT_CORE_CLK_DIV) &&
   channel == OMAP_DSS_CHANNEL_LCD)
  dispc.core_clk_rate = dispc_fclk_rate() / lck_div;
}
