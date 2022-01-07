
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int* lcd_clk_source; int dispc_clk_source; } ;


 int FEAT_LCD_CLK_SRC ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 TYPE_1__ dss ;
 scalar_t__ dss_has_feature (int ) ;

enum omap_dss_clk_source dss_get_lcd_clk_source(enum omap_channel channel)
{
 if (dss_has_feature(FEAT_LCD_CLK_SRC)) {
  int ix = channel == OMAP_DSS_CHANNEL_LCD ? 0 :
   (channel == OMAP_DSS_CHANNEL_LCD2 ? 1 : 2);
  return dss.lcd_clk_source[ix];
 } else {


  return dss.dispc_clk_source;
 }
}
