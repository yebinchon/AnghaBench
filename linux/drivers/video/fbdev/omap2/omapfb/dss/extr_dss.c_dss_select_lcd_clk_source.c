
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int* lcd_clk_source; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DSS_CONTROL ;
 int FEAT_LCD_CLK_SRC ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;



 int REG_FLD_MOD (int ,int,int,int) ;
 TYPE_1__ dss ;
 int dss_has_feature (int ) ;
 int dss_select_dispc_clk_source (int) ;

void dss_select_lcd_clk_source(enum omap_channel channel,
  enum omap_dss_clk_source clk_src)
{
 int b, ix, pos;

 if (!dss_has_feature(FEAT_LCD_CLK_SRC)) {
  dss_select_dispc_clk_source(clk_src);
  return;
 }

 switch (clk_src) {
 case 128:
  b = 0;
  break;
 case 129:
  BUG_ON(channel != OMAP_DSS_CHANNEL_LCD);
  b = 1;
  break;
 case 130:
  BUG_ON(channel != OMAP_DSS_CHANNEL_LCD2 &&
         channel != OMAP_DSS_CHANNEL_LCD3);
  b = 1;
  break;
 default:
  BUG();
  return;
 }

 pos = channel == OMAP_DSS_CHANNEL_LCD ? 0 :
      (channel == OMAP_DSS_CHANNEL_LCD2 ? 12 : 19);
 REG_FLD_MOD(DSS_CONTROL, b, pos, pos);

 ix = channel == OMAP_DSS_CHANNEL_LCD ? 0 :
     (channel == OMAP_DSS_CHANNEL_LCD2 ? 1 : 2);
 dss.lcd_clk_source[ix] = clk_src;
}
